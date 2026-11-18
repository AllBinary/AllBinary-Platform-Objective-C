// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/ResolveCompleteMotionGestureListener.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEventHandler.h"
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"
#include "org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener.h"
#include "org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.h"



void ResolveCompleteMotionGestureListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ResolveCompleteMotionGestureListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [self->logUtil putF:"MotionGesture to CompleteMotionGesture Reciever" :self :commonStrings->CONSTRUCTOR];
        [[CompleteMotionGestureInputEventHandler getInstance] addListener:[((GameKeyFromMotionGestureEventListener*) [GameKeyFromMotionGestureEventListener alloc]) init]];
    return self;
}


// throws Exception
- (void) onMotionGestureCompleted:(BasicArrayList*)list {
        MotionGestureConfiguration* configuration = [MotionGestureConfigurationFactory getInstance];
        BasicArrayList* commandActionsList = [configuration getAssociateCommandActionsList];
        int32_t size = [commandActionsList size];
        for (int32_t index = size - 1; index >= 0; index--) {
            MotionGestureToMotionGestureActionAssociation* association = ((MotionGestureToMotionGestureActionAssociation*) commandActionsList->objectArray[index]);
            if ([association isMotionGestureArrayEquals:list] == true) {
                GameKeyCompleteMotionGestureInputEvent* completeMotionGestureInputEvent = ((GameKeyCompleteMotionGestureInputEvent*) [association getCommandAction]);
                [[CompleteMotionGestureInputEventHandler getInstance] fireEvent:completeMotionGestureInputEvent];
                break;
            }
        }
}

@end

