// Generated Code Do Not Modify
#include "org/allbinary/logic/io/DataOutputStreamFactory.h"
#include "org/allbinary/logic/io/file/AbFile.h"
#include "org/allbinary/logic/io/AbFileOutputStream.h"
#include "org/allbinary/logic/io/AbDataOutputStream.h"
#include "org/allbinary/logic/io/FileStreamFactory.h"


static DataOutputStreamFactory* DataOutputStreamFactory_instance;

void DataOutputStreamFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DataOutputStreamFactory_instance = [((DataOutputStreamFactory*) [DataOutputStreamFactory alloc]) init];
}

@implementation DataOutputStreamFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (DataOutputStreamFactory*) getInstance {
        return (DataOutputStreamFactory_staticInit(), DataOutputStreamFactory_instance);
}


// throws Exception
- (AbDataOutputStream*) getInstanceForAbFile:(AbFile*)file {
        AbFileOutputStream* idFileOutputStream = [AbFileOutputStream createFromAbFile:file];
        AbDataOutputStream* idOutData = [((AbDataOutputStream*) [AbDataOutputStream alloc]) init:idFileOutputStream];
        return idOutData;
}


// throws Exception
- (AbDataOutputStream*) getInstance:(const char*)filePath :(const char*)fileName {
        FileStreamFactory* fileStreamFactory = [FileStreamFactory getInstance];
        AbFileOutputStream* fileOutputStream = [fileStreamFactory getFileOutputStreamInstance:filePath :fileName];
        AbDataOutputStream* idOutData = [((AbDataOutputStream*) [AbDataOutputStream alloc]) init:fileOutputStream];
        return idOutData;
}

@end

