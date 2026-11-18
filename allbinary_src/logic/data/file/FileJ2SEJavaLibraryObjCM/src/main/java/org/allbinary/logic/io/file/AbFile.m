// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/AbFile.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/io/path/AbPath.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/io/file/AbFileInterface.h"


AbFile* AbFile_NULL_FILE;

void AbFile_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AbFile_NULL_FILE = [AbFile createAbFileFromRawPath:[StringUtil getInstance]->EMPTY_STRING];
}

@implementation AbFile

- (void) initFields {
    
}


// throws Exception
+ (AbFile*) createAbFileWithChild:(AbFile*)file :(const char*)childPathName {
        return [((AbFile*) [AbFile alloc]) init:[((File*) [File alloc]) init:[file getFile] :childPathName]];
}


// throws Exception
+ (AbFile*) createAbFile:(const char*)filePath {
        return [((AbFile*) [AbFile alloc]) init:[((File*) [File alloc]) init:[[((AbPath*) [AbPath alloc]) init:filePath :[StringUtil getInstance]->EMPTY_STRING] toFileSystemString]]];
}


// throws Exception
+ (AbFile*) createAbFilePathAndName:(const char*)filePath :(const char*)fileName {
        return [((AbFile*) [AbFile alloc]) init:[((File*) [File alloc]) init:[[((AbPath*) [AbPath alloc]) init:filePath :[StringUtil getInstance]->EMPTY_STRING] toFileSystemString] :fileName]];
}


+ (AbFile*) createAbFileFromAbPath:(AbPath*)abPath {
        return [((AbFile*) [AbFile alloc]) init:[((File*) [File alloc]) init:[abPath toFileSystemString]]];
}


+ (AbFile*) createAbFileFromRawPath:(const char*)filePath {
        return [((AbFile*) [AbFile alloc]) init:[((File*) [File alloc]) init:filePath]];
}


- (instancetype) init:(File*)file {
    self = [super init];
    [self initFields];
        self->file = file;
    return self;
}


- (File*) getFile {
        return self->file;
}


- (const char*) getName {
        return [self->file getName];
}


- (const char*) getParent {
        return [self->file getParent];
}


- (id) getParentFile {
        return [self->file getParentFile];
}


- (const char*) getPath {
        return [self->file getPath];
}


- (bool) isAbsolute {
        return [self->file isAbsolute];
}


- (const char*) getAbsolutePath {
        return [self->file getAbsolutePath];
}


- (id) getAbsoluteFile {
        return [self->file getAbsoluteFile];
}


// throws IOException
- (const char*) getCanonicalPath {
        return [self->file getCanonicalPath];
}


// throws IOException
- (id) getCanonicalFile {
        return [self->file getCanonicalFile];
}


- (URI*) toURI {
        return [self->file toURI];
}


- (bool) canRead {
        return [self->file canRead];
}


- (bool) canWrite {
        return [self->file canWrite];
}


- (bool) exists {
        return [self->file exists];
}


- (bool) isDirectory {
        return [self->file isDirectory];
}


- (bool) isFile {
        return [self->file isFile];
}


- (bool) isHidden {
        return [self->file isHidden];
}


- (int64_t) lastModified {
        return [self->file lastModified];
}


- (int64_t) length {
        return ((int64_t) [self->file length]);
}


// throws IOException
- (bool) createNewFile {
        return [self->file createNewFile];
}


// throws IOException
- (bool) delete {
        return [self->file delete];
}


- (void) deleteOnExit {
        [self->file deleteOnExit];
}


- (const char**) list {
        return [self->file list];
}


- (const char**) listWithFilter:(FilenameFilter*)filter {
        return [self->file list:filter];
}


- (id*) listFiles {
        return ((id*) [self->file listFiles]);
}


- (id*) listFilesFileNameFilter:(FilenameFilter*)filter {
        return ((id*) [self->file listFiles:filter]);
}


- (id*) listFilesFileFilter:(FileFilter*)filter {
        return ((id*) [self->file listFiles:filter]);
}


- (bool) mkdir {
        return [self->file mkdir];
}


- (bool) mkdirs {
        return [self->file mkdirs];
}


- (bool) renameTo:(AbFile*)dest {
        return [self->file renameTo:[dest getFile]];
}


- (bool) setLastModified:(int64_t)time {
        return [self->file setLastModified:time];
}


- (bool) setReadOnly {
        return [self->file setReadOnly];
}


- (bool) setWritable:(bool)writable :(bool)ownerOnly {
        return [self->file setExecutable:writable :ownerOnly];
}


- (bool) setWritable:(bool)writable {
        return [self->file setWritable:writable];
}


- (bool) setReadable:(bool)readable :(bool)ownerOnly {
        return [self->file setReadable:readable :ownerOnly];
}


- (bool) setReadable:(bool)readable {
        return [self->file setReadable:readable];
}


- (bool) setExecutable:(bool)executable :(bool)ownerOnly {
        return [self->file setExecutable:executable :ownerOnly];
}


- (bool) setExecutable:(bool)executable {
        return [self->file setExecutable:executable];
}


- (bool) canExecute {
        return [self->file canExecute];
}


- (int64_t) getTotalSpace {
        return [self->file getTotalSpace];
}


- (int64_t) getFreeSpace {
        return [self->file getFreeSpace];
}


- (int64_t) getUsableSpace {
        return [self->file getUsableSpace];
}


- (int32_t) compareTo:(File*)pathname {
        return [self->file compareTo:pathname];
}


- (bool) equals:(id)obj {
        return [[TsUtil getInstance] equalsNotstring:self->file :obj];
}


- (int32_t) hashCode {
        return [self->file hashCode];
}


- (const char*) toString {
        return [self->file toString];
}

@end

