// Generated Code Do Not Modify
#include "org/allbinary/logic/io/AbFileOutputStream.h"
#include "org/allbinary/logic/io/file/AbFile.h"



void AbFileOutputStream_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbFileOutputStream


// throws FileNotFoundException
+ (AbFileOutputStream*) createFromAbFile:(AbFile*)file {
        return [((AbFileOutputStream*) [AbFileOutputStream alloc]) init:[file getPath] :false];
}


// throws FileNotFoundException
+ (AbFileOutputStream*) createFromAbFileAppend:(AbFile*)file :(bool)append {
        return [((AbFileOutputStream*) [AbFileOutputStream alloc]) init:[file getPath] :append];
}


// throws FileNotFoundException
+ (AbFileOutputStream*) createFromFilePath:(const char*)name {
        return [((AbFileOutputStream*) [AbFileOutputStream alloc]) init:name :false];
}


// throws FileNotFoundException
+ (AbFileOutputStream*) createFromFilePathAppend:(const char*)name :(bool)append {
        return [((AbFileOutputStream*) [AbFileOutputStream alloc]) init:name :append];
}


- (instancetype) init:(const char*)name :(bool)append {
        self = [super init:name :append];
    return self;
}

@end

