// Generated Code Do Not Modify
#include "org/allbinary/data/resource/ResourceUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/io/StreamUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/io/StreamUtil.h")
#include "org/allbinary/logic/io/StreamUtil.h"
#endif


static ResourceUtil* ResourceUtil_instance;

void ResourceUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ResourceUtil_instance = ((ResourceUtil*) [((ResourceUtil*) [ResourceUtil alloc]) init]);
}

@implementation ResourceUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->path = [StringUtil getInstance]->EMPTY_STRING;
    self->ext = [StringUtil getInstance]->EMPTY_STRING;
}


+ (ResourceUtil*) getInstance {
        return (ResourceUtil_staticInit(), ResourceUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) setLoadingPaths:(const char*)path :(const char*)ext {
        self->path = path;
        self->ext = ext;
}


- (void) setClassLoader:(ClassLoader*)classLoader {
}


// throws Exception
- (InputStream*) getResourceAsStream:(const char*)resource {
        InputStream* inputStream = [self getResourceAsStreamAtStart:resource :2];
        if (inputStream == nil) {
            inputStream = [self getResourceAsStreamAtStart:resource :1];
            if (inputStream == nil) {
                java_throw(java_exception_new("Exception", [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Unable to obtain: "] append:resource] toString]));
            }
        }
        return inputStream;
}


// throws Exception
- (InputStream*) getResourceAsStreamAtStart:(const char*)resource :(int32_t)startIndex {
        InputStream* inputStream = ((FileInputStream*) [((FileInputStream*) [FileInputStream alloc]) init:[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->path] append:resource] append:self->ext] toString]]);
        if (inputStream != nil) {
            int8_t* byteArray = ((int8_t*) java_array_new(sizeof(int8_t), [inputStream available]));
            [[StreamUtil getInstance] getByteArray:inputStream :((ByteArrayOutputStream*) [((ByteArrayOutputStream*) [ByteArrayOutputStream alloc]) init]) :byteArray];
            return ((ByteArrayInputStream*) [((ByteArrayInputStream*) [ByteArrayInputStream alloc]) init:byteArray]);
        }
        return inputStream;
}


- (void) addResource:(const char*)resource :(int32_t)value {
}

@end

