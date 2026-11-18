#!/usr/bin/env bash

# Compiles the Objective-C sources the Objective-C converter generated (Class.h and Class.m for each Java class) with Cygwin gcc.
# The headers are copied to <output>/include and the objects archived to <output>/lib/lib<artifactId>.a so dependent
# projects find them in this project's jar under META-INF/objc.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_includes=()
IFS=";" read -r -a runtime_dirs <<< "$5"
for runtime_dir in "${runtime_dirs[@]}"; do
    runtime_includes+=("-I$(cygpath -u "$runtime_dir")")
done
compiler="$6"
read -r -a compiler_flags <<< "$7"
# A Java subclass passed where its superclass or interface is wanted is a pointer conversion GCC 14 makes an error by default.
compiler_flags+=(-Wno-error=incompatible-pointer-types)
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Objective-C sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/include" "$output_dir/lib" "$object_dir"

# Headers of this project for the dependent projects
(cd "$source_dir" && find . -type f -name '*.h' -print0 | xargs -0 -r cp --parents -t "$output_dir/include")

objects=()
failures=()
while IFS= read -r -d '' source; do
    relative_path="${source#"$source_dir"/}"
    object="$object_dir/${relative_path%.m}.o"
    mkdir -p "$(dirname "$object")"
    if "$compiler" "${compiler_flags[@]}" -I"$source_dir" -I"$dependency_dir/include" "${runtime_includes[@]}" -c "$source" -o "$object"; then
        objects+=("$object")
    else
        failures+=("$relative_path")
    fi
done < <(find "$source_dir" -type f -name '*.m' -print0 | sort -z)

# The hand written Objective-C runtime (J2SEForObjCLibraryObjCM java/...) is compiled too so a project checks the runtime it
# uses. Its objects are not archived: the program links the runtime once.
for runtime_dir in "${runtime_dirs[@]}"; do
    runtime_path="$(cygpath -u "$runtime_dir")"
    [ -d "$runtime_path" ] || continue
    while IFS= read -r -d '' source; do
        relative_path="${source#"$runtime_path"/}"
        object="$object_dir/runtime/${relative_path%.m}.o"
        mkdir -p "$(dirname "$object")"
        if ! "$compiler" "${compiler_flags[@]}" "${runtime_includes[@]}" -c "$source" -o "$object"; then
            failures+=("runtime/$relative_path")
        fi
    done < <(find "$runtime_path" -type f -name '*.m' -print0 | sort -z)
done

echo "Objective-C sources compiled: ${#objects[@]}"
if [ "${#objects[@]}" -gt 0 ]; then
    ar rcs "$output_dir/lib/lib$artifact.a" "${objects[@]}"
fi

if [ "${#failures[@]}" -gt 0 ]; then
    echo "Objective-C build failures: ${#failures[@]}" >&2
    printf '  %s\n' "${failures[@]}" >&2
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
fi
exit 0
