// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/health/HealLayer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/health/HealthInterface.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/view/ViewPosition.h"



void HealLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HealLayer


- (instancetype) init {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING :[((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :0 :0] :[ViewPosition getInstanceD]];
    return self;
}


- (void) paint:(Graphics*)graphics {
}


- (void) visit:(HealthInterface*)healthInterface {
        if ([healthInterface isAlive]) {
            [healthInterface healMax];
        } else {
            [self->logUtil putF:"Heal attempt on dead: Does not currently occur" :self :"visit"];
        }
}

@end

