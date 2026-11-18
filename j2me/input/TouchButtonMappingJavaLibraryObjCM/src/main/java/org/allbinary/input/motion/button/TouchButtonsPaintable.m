// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonsPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/input/motion/button/TouchButtonFactory.h"
#include "org/allbinary/input/motion/button/TouchButton.h"



void TouchButtonsPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonsPaintable

- (void) initFields {
    
    
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    self->touchButtonFactory = [TouchButtonFactory getInstance];
}


- (instancetype) init:(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        self->foregroundBasicColor = basicColor;
        self->foregroundColor = [basicColor intValue];
    return self;
}


- (void) paint:(Graphics*)graphics {
        BasicArrayList* list = [self->touchButtonFactory getList];
        [self->basicSetColorUtil setBasicColorP3:graphics :self->foregroundBasicColor :self->foregroundColor];
        TouchButton* touchButton = nullptr;
        for (int32_t index = [list size]; --index >= 0; ) {
            touchButton = ((TouchButton*) list->objectArray[index]);
            [touchButton paint:graphics];
        }
        for (int32_t index = [list size]; --index >= 0; ) {
            touchButton = ((TouchButton*) list->objectArray[index]);
            [touchButton paintHint:graphics];
        }
}

@end

