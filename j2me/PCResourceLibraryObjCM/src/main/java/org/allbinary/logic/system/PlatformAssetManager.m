// Generated Code Do Not Modify
#include "org/allbinary/logic/system/PlatformAssetManager.h"
#include "org/allbinary/data/resource/ResourceUtil.h"


static PlatformAssetManager* PlatformAssetManager_instance;

void PlatformAssetManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlatformAssetManager_instance = ((PlatformAssetManager*) [((PlatformAssetManager*) [PlatformAssetManager alloc]) init]);
}

@implementation PlatformAssetManager

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PlatformAssetManager*) getInstance {
        return (PlatformAssetManager_staticInit(), PlatformAssetManager_instance);
}


// throws Exception
- (InputStream*) getResourceAsStream:(const char*)resource {
        ResourceUtil* resourceUtil = [ResourceUtil getInstance];
        InputStream* inputStream = [resourceUtil getResourceAsStream:resource];
        return inputStream;
}

@end

