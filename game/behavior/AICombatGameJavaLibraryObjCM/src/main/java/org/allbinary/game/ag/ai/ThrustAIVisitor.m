// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/ThrustAIVisitor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/ai/BasicAI.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/string/CommonStrings.h"



void ThrustAIVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ThrustAIVisitor

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
            [basicAI processKeyAI:(Canvas_staticInit(), Canvas_UP)];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->VISIT :e];
        } JAVA_END_TRY;
        return self->TRUE;
}

@end

