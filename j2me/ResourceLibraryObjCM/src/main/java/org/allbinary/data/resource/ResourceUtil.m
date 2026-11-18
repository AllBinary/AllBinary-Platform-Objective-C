// Generated Code Do Not Modify
#include "org/allbinary/data/resource/ResourceUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"


static id ResourceUtil_classLoader;
static ResourceUtil* ResourceUtil_instance;

void ResourceUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ResourceUtil_classLoader = [NullUtil getInstance]->NULL_OBJECT;
    ResourceUtil_instance = [((ResourceUtil*) [ResourceUtil alloc]) init];
}

@implementation ResourceUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
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
        [self->logUtil putF:[CommonStrings getInstance]->NOT_IMPLEMENTED :self :"setLoadingPaths"];
}


- (void) setClassLoader:(ClassLoader*)classLoader {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Resource Loader: "] append:java_objc_class_name(classLoader)] toString] :self :"setClassLoader"];
        ResourceUtil_classLoader = classLoader;
}


// throws Exception
- (InputStream*) getResourceAsStream:(const char*)resource {
        InputStream* inputStream = [self getResourceAsStreamAtStart:resource :2];
        if (inputStream == nil) {
            inputStream = [self getResourceAsStreamAtStart:resource :1];
            if (inputStream == nil) {
                java_throw(java_exception_new("Exception", [[[[((StringMaker*) [StringMaker alloc]) init] append:"Unable to obtain: "] append:resource] toString]));
            }
        }
        return inputStream;
}


// throws Exception
- (InputStream*) getResourceAsStreamAtStart:(const char*)resource :(int32_t)startIndex {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        int32_t index = java_string_indexOf(resource, commonSeps->COLON);
        const char* resourcePath = java_substring(resource, index + startIndex, (int32_t) strlen(resource));
        InputStream* inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
        if (inputStream != nil) {
            return inputStream;
        }
        ClassLoader* classLoader = ((ClassLoader*) (ResourceUtil_staticInit(), ResourceUtil_classLoader));
        inputStream = [classLoader getResourceAsStream:resourcePath];
        if (inputStream != nil) {
            return inputStream;
        }
        inputStream = [[[Thread currentThread] getContextClassLoader] getResourceAsStream:resourcePath];
        if (inputStream != nil) {
            return inputStream;
        }
        return inputStream;
}


- (void) addResource:(const char*)resource :(int32_t)value {
}

@end

