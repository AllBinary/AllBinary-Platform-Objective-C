// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/NoButtonsBuilder.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/input/motion/button/BaseTouchInput.h"



void NoButtonsBuilder_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoButtonsBuilder

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (BasicArrayList*) getList {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
            BasicArrayList* list = [[BasicArrayListUtil getInstance] getImmutableInstance];
            return list;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->GET_LIST :e];
            return [[BasicArrayListUtil getInstance] getImmutableInstance];
        } JAVA_END_TRY;
}

@end

