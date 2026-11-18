// Generated Code Do Not Modify
#include "org/allbinary/data/resource/ResourceUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"


static ResourceUtil* ResourceUtil_instance;

void ResourceUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
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


// throws Exception
- (InputStream*) getResourceAsStream:(const char*)resource {
        InputStream* inputStream = [java_objc_class_name(resource) getResourceAsStream:resource];
        if (inputStream == nil) {
            inputStream = [self getResourceAsStreamAtStart:resource :2];
            if (inputStream == nil) {
                inputStream = [self getResourceAsStreamAtStart:resource :1];
                if (inputStream == nil) {
                    StringMaker* stringMaker = [((StringMaker*) [StringMaker alloc]) init];
                    int32_t index = java_string_lastIndexOf(resource, u'/');
                    const char* resourcePath = java_substring(resource, index + 1, (int32_t) strlen(resource));
                    inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
                    if (inputStream == nil) {
                        resourcePath = java_substring(resource, index, (int32_t) strlen(resource));
                        inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
                        if (inputStream == nil) {
                            const char* RES = "res";
                            resourcePath = [[[stringMaker append:RES] append:java_substring(resource, index, (int32_t) strlen(resource))] toString];
                            inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
                            if (inputStream == nil) {
                                [stringMaker delete:0 :[stringMaker length]];
                                resourcePath = [[[[stringMaker append:"/"] append:RES] append:java_substring(resource, index, (int32_t) strlen(resource))] toString];
                                inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
                                const char* COLON = [CommonSeps getInstance]->COLON;
                                if (inputStream == nil) {
                                    [stringMaker delete:0 :[stringMaker length]];
                                    resourcePath = [[[[stringMaker append:RES] append:COLON] append:java_substring(resource, index, (int32_t) strlen(resource))] toString];
                                    inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
                                    if (inputStream == nil) {
                                        [stringMaker delete:0 :[stringMaker length]];
                                        resourcePath = [[[[stringMaker append:RES] append:COLON] append:java_substring(resource, index + 1, (int32_t) strlen(resource))] toString];
                                        inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
                                        if (inputStream == nil) {
                                            const char* RESOURCE_STRING = "resource";
                                            [stringMaker delete:0 :[stringMaker length]];
                                            resourcePath = [[[[stringMaker append:RESOURCE_STRING] append:COLON] append:java_substring(resource, index, (int32_t) strlen(resource))] toString];
                                            inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
                                            if (inputStream == nil) {
                                                [stringMaker delete:0 :[stringMaker length]];
                                                resourcePath = [[[[stringMaker append:RESOURCE_STRING] append:COLON] append:java_substring(resource, index + 1, (int32_t) strlen(resource))] toString];
                                                inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
                                                if (inputStream == nil) {
                                                    [stringMaker delete:0 :[stringMaker length]];
                                                    java_throw(java_exception_new("Exception", [[[stringMaker append:"Unable to obtain: "] append:resource] toString]));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return inputStream;
}


// throws Exception
- (InputStream*) getResourceAsStreamAtStart:(const char*)resource :(int32_t)startIndex {
        StringMaker* stringMaker = [((StringMaker*) [StringMaker alloc]) init];
        int32_t index = java_string_indexOf(resource, [CommonSeps getInstance]->COLON);
        const char* resourcePath = java_substring(resource, index + startIndex, (int32_t) strlen(resource));
        InputStream* inputStream = [java_objc_class_name(resource) getResourceAsStream:resourcePath];
        if (inputStream != nil) {
            return inputStream;
        }
        return inputStream;
}


- (void) addResource:(const char*)resource :(int32_t)value {
}

@end

