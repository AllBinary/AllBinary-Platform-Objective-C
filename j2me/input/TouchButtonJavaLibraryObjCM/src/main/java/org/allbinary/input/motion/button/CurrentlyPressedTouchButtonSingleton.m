// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"


static CurrentlyPressedTouchButtonSingleton* CurrentlyPressedTouchButtonSingleton_instance;

void CurrentlyPressedTouchButtonSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CurrentlyPressedTouchButtonSingleton_instance = ((CurrentlyPressedTouchButtonSingleton*) [((CurrentlyPressedTouchButtonSingleton*) [CurrentlyPressedTouchButtonSingleton alloc]) init]);
}

@implementation CurrentlyPressedTouchButtonSingleton

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (CurrentlyPressedTouchButtonSingleton*) getInstance {
        return (CurrentlyPressedTouchButtonSingleton_staticInit(), CurrentlyPressedTouchButtonSingleton_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (int32_t) size {
        return [self->list size];
}


- (TouchButtonInput*) removeAt:(int32_t)index {
        return ((TouchButtonInput*) [self->list removeAt:index]);
}


- (bool) remove:(TouchButtonInput*)touchButtonInput {
        return [self->list remove:touchButtonInput];
}


- (TouchButtonInput*) get:(int32_t)index {
        return ((TouchButtonInput*) self->list->objectArray[index]);
}


- (bool) contains:(TouchButtonInput*)touchButtonInput {
        return [self->list contains:touchButtonInput];
}


- (void) add:(TouchButtonInput*)touchButtonInput {
        [self->list add:touchButtonInput];
}

@end

