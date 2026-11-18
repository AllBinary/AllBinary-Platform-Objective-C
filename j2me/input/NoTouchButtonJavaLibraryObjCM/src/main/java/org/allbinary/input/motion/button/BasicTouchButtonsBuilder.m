// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/BasicTouchButtonsBuilder.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/input/motion/button/BaseTouchInput.h"


static BasicTouchButtonsBuilder* BasicTouchButtonsBuilder_SINGLETON;

void BasicTouchButtonsBuilder_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicTouchButtonsBuilder_SINGLETON = [((BasicTouchButtonsBuilder*) [BasicTouchButtonsBuilder alloc]) init];
}

@implementation BasicTouchButtonsBuilder

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BaseTouchInput*) getInstance {
        return (BasicTouchButtonsBuilder_staticInit(), BasicTouchButtonsBuilder_SINGLETON);
}


- (BasicArrayList*) getList {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->GET_LIST];
            BasicArrayList* list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
            return list;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->GET_LIST :e];
            return [[BasicArrayListUtil getInstance] getImmutableInstance];
        } JAVA_END_TRY;
}

@end

