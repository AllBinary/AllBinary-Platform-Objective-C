// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/CancelTouchButtonInputFactory.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif


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
            CancelTouchButtonInputFactory_instance = ((CancelTouchButtonInputFactory*) [((CancelTouchButtonInputFactory*) [CancelTouchButtonInputFactory alloc]) init]);
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
        self->cancelInputArray[[basicTouchInputFactory->UP getSourceId]] = basicTouchInputFactory->DOWN;
        self->cancelInputArray[[basicTouchInputFactory->DOWN getSourceId]] = basicTouchInputFactory->UP;
        self->cancelInputArray[[basicTouchInputFactory->LEFT getSourceId]] = basicTouchInputFactory->RIGHT;
        self->cancelInputArray[[basicTouchInputFactory->RIGHT getSourceId]] = basicTouchInputFactory->LEFT;
    return self;
}


- (TouchButtonInput*) getCancel:(TouchButtonInput*)touchButtonInput {
        return self->cancelInputArray[[touchButtonInput getSourceId]];
}

@end

