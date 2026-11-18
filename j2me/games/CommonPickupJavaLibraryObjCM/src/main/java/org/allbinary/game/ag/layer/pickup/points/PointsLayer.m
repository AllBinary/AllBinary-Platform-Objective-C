// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/points/PointsLayer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/view/ViewPosition.h"



void PointsLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PointsLayer

- (void) initFields {
    
}


- (instancetype) init:(int32_t)points {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING :[((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :0 :0] :[ViewPosition getInstanceD]];
        [self initFields];
        self->points = points;
    return self;
}


- (void) paint:(Graphics*)graphics {
}


- (void) visit:(ScoreableInterface*)scoreableInterface {
        [scoreableInterface addPoints:self->points];
}

@end

