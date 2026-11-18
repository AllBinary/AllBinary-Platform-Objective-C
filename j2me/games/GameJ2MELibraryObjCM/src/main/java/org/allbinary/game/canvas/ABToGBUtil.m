// Generated Code Do Not Modify
#include "org/allbinary/game/canvas/ABToGBUtil.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/NullCanvas.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"


static ABToGBUtil* ABToGBUtil_instance;

void ABToGBUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ABToGBUtil_instance = [((ABToGBUtil*) [ABToGBUtil alloc]) init];
}

@implementation ABToGBUtil

- (void) initFields {
    self->abCanvas = (NullCanvas_staticInit(), NullCanvas_NULL_CANVAS);
    self->allBinaryGameLayerManager = [AllBinaryGameLayerManager getNullInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ABToGBUtil*) getInstance {
        return (ABToGBUtil_staticInit(), ABToGBUtil_instance);
}

@end

