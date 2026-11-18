// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/life/LifeLayer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/ag/life/Life.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/view/ViewPosition.h"



void LifeLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LifeLayer


- (instancetype) init {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING :[((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :0 :0] :[ViewPosition getInstanceD]];
    return self;
}


- (void) paint:(Graphics*)graphics {
}


- (void) visit:(Life*)lifeInterface {
        [lifeInterface add:((int16_t) 1)];
}

@end

