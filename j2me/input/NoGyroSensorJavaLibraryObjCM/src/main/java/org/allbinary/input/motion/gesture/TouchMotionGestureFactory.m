// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif


static id TouchMotionGestureFactory_instance;

void TouchMotionGestureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchMotionGestureFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation TouchMotionGestureFactory

- (void) initFields {
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


+ (TouchMotionGestureFactory*) getInstance {
        if ((TouchMotionGestureFactory_staticInit(), TouchMotionGestureFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            TouchMotionGestureFactory_instance = ((TouchMotionGestureFactory*) [((TouchMotionGestureFactory*) [TouchMotionGestureFactory alloc]) init]);
        }
        return ((TouchMotionGestureFactory*) (TouchMotionGestureFactory_staticInit(), TouchMotionGestureFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        int32_t MAX = [InputFactory getInstance]->MAX;
        self->LEFT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 3 :"Left Touch"]);
        self->RIGHT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 4 :"Right Touch"]);
        self->UP = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 5 :"Up Touch"]);
        self->DOWN = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 6 :"Down Touch"]);
        self->PRESSED = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 7 :"Screen Press"]);
        self->RELEASED = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 8 :"Released"]);
        self->DIAGONAL_DOWN_RIGHT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 9 :"Diagonal Dn R"]);
        self->DIAGONAL_DOWN_LEFT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 10 :"Diagonal Dn L"]);
        self->DIAGONAL_UP_RIGHT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 11 :"Diagonal Up R"]);
        self->DIAGONAL_UP_LEFT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 12 :"Diagonal Up L"]);
        self->SCROLL_UP = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 13 :"Scroll Up"]);
        self->SCROLL_DOWN = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 14 :"Scroll Down"]);
        self->NO_MOTION = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 2 :"No Motion"]);
        self->LAST_MOTION = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 19 :"Last Motion"]);
    return self;
}

@end

