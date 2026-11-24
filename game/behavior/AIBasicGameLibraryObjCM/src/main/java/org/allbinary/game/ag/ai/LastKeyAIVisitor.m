// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/LastKeyAIVisitor.h"
#include "org/allbinary/game/ai/BasicAI.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif



void LastKeyAIVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LastKeyAIVisitor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->TRUE = [BooleanFactory getInstance]->TRUE;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (id) visit:(id)anyType {
        JAVA_TRY {
            BasicAI* basicAI = ((BasicAI*) anyType);
            int32_t key = [basicAI getLastKey];
            if (key != -1) {
                [basicAI processKeyAI:key];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->VISIT :e];
        } JAVA_END_TRY;
        return JAVA_BOX(self->TRUE);
}

@end

