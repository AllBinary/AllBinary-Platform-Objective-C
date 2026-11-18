// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/CancelTouchButtonInputFactory.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"


static id CancelTouchButtonInputFactory_instance;

void CancelTouchButtonInputFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CancelTouchButtonInputFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation CancelTouchButtonInputFactory

- (void) initFields {
    self->cancelInputArray = ((TouchButtonInput**) java_array_new(sizeof(TouchButtonInput*), [InputFactory getInstance]->MAX));
}


+ (CancelTouchButtonInputFactory*) getInstance {
        if ((CancelTouchButtonInputFactory_staticInit(), CancelTouchButtonInputFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            CancelTouchButtonInputFactory_instance = [((CancelTouchButtonInputFactory*) [CancelTouchButtonInputFactory alloc]) init];
        }
        return ((CancelTouchButtonInputFactory*) (CancelTouchButtonInputFactory_staticInit(), CancelTouchButtonInputFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        BasicTouchInputFactory* basicTouchInputFactory = [BasicTouchInputFactory getInstance];
        for (int32_t index = java_array_length(self->cancelInputArray) - 1; index >= 0; index--) {
            self->cancelInputArray[index] = basicTouchInputFactory->NONE;
        }
        self->cancelInputArray[[basicTouchInputFactory->UP getId]] = basicTouchInputFactory->DOWN;
        self->cancelInputArray[[basicTouchInputFactory->DOWN getId]] = basicTouchInputFactory->UP;
        self->cancelInputArray[[basicTouchInputFactory->LEFT getId]] = basicTouchInputFactory->RIGHT;
        self->cancelInputArray[[basicTouchInputFactory->RIGHT getId]] = basicTouchInputFactory->LEFT;
    return self;
}


- (TouchButtonInput*) getCancel:(TouchButtonInput*)touchButtonInput {
        return self->cancelInputArray[[touchButtonInput getId]];
}

@end

