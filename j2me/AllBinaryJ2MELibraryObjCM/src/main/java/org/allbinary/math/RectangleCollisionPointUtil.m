// Generated Code Do Not Modify
#include "org/allbinary/math/RectangleCollisionPointUtil.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/math/RectangleCollisionUtil.h"



void RectangleCollisionPointUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RectangleCollisionPointUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (bool) allPointsInside:(int32_t)rectX1 :(int32_t)rectY1 :(int32_t)rectX2 :(int32_t)rectY2 :(BasicArrayList*)list {
        RectangleCollisionUtil* rectangleCollisionUtil = [RectangleCollisionUtil getInstance];
        GPoint* point = nullptr;
        for (int32_t index = [list size]; --index >= 0; ) {
            point = ((GPoint*) list->objectArray[index]);
            if (![rectangleCollisionUtil isInside:rectX1 :rectY1 :rectX2 :rectY2 :[point getX] :[point getY]]) {
                return false;
            }
        }
        return true;
}


+ (bool) allPointsInsideCell:(int32_t)rectX1 :(int32_t)rectY1 :(int32_t)rectX2 :(int32_t)rectY2 :(BasicArrayList*)list :(int32_t)xCellSize :(int32_t)yCellSize {
        RectangleCollisionUtil* rectangleCollisionUtil = [RectangleCollisionUtil getInstance];
        GPoint* point = nullptr;
        for (int32_t index = [list size]; --index >= 0; ) {
            point = ((GPoint*) list->objectArray[index]);
            if (![rectangleCollisionUtil isInside:rectX1 :rectY1 :rectX2 :rectY2 :[point getX] * xCellSize :[point getY] * yCellSize]) {
                return false;
            }
        }
        return true;
}

@end

