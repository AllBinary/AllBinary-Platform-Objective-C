// Generated Code Do Not Modify
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/Input.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static id InputFactory_instance;

void InputFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InputFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation InputFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->KEY_CODE_LABEL = "KeyCode: ";
    self->DEVICE_ID_LABEL = "DeviceId: ";
    self->MAX = [[SmallIntegerSingletonFactory getInstance] getMin];
    self->inputIntegerArray = ((Input**) java_array_new(sizeof(Input*), self->MAX));
    self->NO_INPUT = ((Input*) [((Input*) [Input alloc]) init:0 :self->commonStrings->UNKNOWN]);
}


+ (InputFactory*) getInstance {
        if ((InputFactory_staticInit(), InputFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            InputFactory_instance = ((InputFactory*) [((InputFactory*) [InputFactory alloc]) init]);
        }
        return ((InputFactory*) (InputFactory_staticInit(), InputFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        int32_t size = java_array_length(self->inputIntegerArray);
        for (int32_t index = 0; index < size; index++) {
            self->inputIntegerArray[index] = self->NO_INPUT;
        }
    return self;
}


- (void) add:(int32_t)id_ :(Input*)input {
        self->inputIntegerArray[id_] = input;
}


- (Input*) getInstanceById:(int32_t)id_ {
        if (id_ < 0) {
            id_ = -id_;
        }
        if (id_ > java_array_length(self->inputIntegerArray)) {
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Warning id: "] appendint:id_] toString] :self :self->commonStrings->GET_INSTANCE];
            return self->NO_INPUT;
        }
        return self->inputIntegerArray[id_];
}

@end

