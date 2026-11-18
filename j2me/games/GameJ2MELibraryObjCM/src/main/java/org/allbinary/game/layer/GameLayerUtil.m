// Generated Code Do Not Modify
#include "org/allbinary/game/layer/GameLayerUtil.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/view/ViewPositionBase.h"



void GameLayerUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameLayerUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (bool) isOnScreen:(AllBinaryLayer*)layer {
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        ViewPositionBase* viewPosition = [layer getViewPosition];
        return [GameLayerUtil isInside:[viewPosition getX] :[viewPosition getY] :[viewPosition getX2] :[viewPosition getY2] :0 :0 :[displayInfo getLastWidth] :[displayInfo getLastHeight]];
}


+ (bool) isInside:(int32_t)rectX1 :(int32_t)rectY1 :(int32_t)rectX2 :(int32_t)rectY2 :(int32_t)rect2X1 :(int32_t)rect2Y1 :(int32_t)rect2X2 :(int32_t)rect2Y2 {
        if (rectX1 > rect2X1 && rectX2 < rect2X2 && rectY1 > rect2Y1 && rectY2 < rect2Y2) {
            return true;
        } else {
            return false;
        }
}

@end

