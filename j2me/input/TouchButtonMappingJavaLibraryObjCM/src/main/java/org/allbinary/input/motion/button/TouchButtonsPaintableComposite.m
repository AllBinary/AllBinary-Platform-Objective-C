// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonsPaintableComposite.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEventHandler.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/mapping/InputMappingInterface.h"
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/input/motion/button/TouchButtonsMappingPaintable.h"
#if __has_include("org/allbinary/game/input/CompleteMotionGestureInputEventHandler.h")
#include "org/allbinary/game/input/CompleteMotionGestureInputEventHandler.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/game/input/CompleteMotionGestureInputEventHandler.h")
#include "org/allbinary/game/input/CompleteMotionGestureInputEventHandler.h"
#endif



void TouchButtonsPaintableComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonsPaintableComposite

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
    self->timeHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:250]);
    self->released = true;
    self->METHOD_NAME = "onCompleteMotionGestureInputEvent";
    self->RELEASE = "Ignoring: MotionGestureInput Release";
    self->FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly";
    self->IGNORE = "Ignoring: Until Released";
}


- (instancetype) init:(InputMappingInterface*)inputMappingInterface :(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        self->inputMappingInterface = inputMappingInterface;
        [[CompleteMotionGestureInputEventHandler getInstance] addListenerInterface:self];
        self->touchButtonsPaintable = ((TouchButtonsMappingPaintable*) [((TouchButtonsMappingPaintable*) [TouchButtonsMappingPaintable alloc]) init:basicColor]);
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onCompleteMotionGestureInputEvent:(CompleteMotionGestureInputEvent*)completeMotionGestureInputEvent {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START :self :"onCompleteMotionGestureInputEvent"];
            TouchMotionGestureFactory* touchMotionGestureFactory = [TouchMotionGestureFactory getInstance];
            GameKeyCompleteMotionGestureInputEvent* gameKeyCompleteMotionGestureInputEvent = ((GameKeyCompleteMotionGestureInputEvent*) completeMotionGestureInputEvent);
            GameKey* gameKey = [gameKeyCompleteMotionGestureInputEvent getGameKey];
            MotionGestureInput* motionGestureInput = [completeMotionGestureInputEvent getMotionGestureInput];
            if (motionGestureInput == touchMotionGestureFactory->RELEASED) {
                [self->logUtil putF:self->RELEASE :self :self->METHOD_NAME];
                self->released = true;
                return;
            }
            if (motionGestureInput == [TouchMotionGestureFactory getInstance]->NO_MOTION && ![self->timeHelper isTimeTNT]) {
                [self->logUtil putF:self->FAST_REPEAT :self :self->METHOD_NAME];
                return;
            }
            if (!self->released) {
                [self->logUtil putF:self->IGNORE :self :self->METHOD_NAME];
                return;
            }
            self->released = false;
            [self->logUtil putF:[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"GameKey: "] append:[[StringUtil getInstance] toString:gameKey]] append:" MotionGestureInput: "] append:[[StringUtil getInstance] toString:motionGestureInput]] toString] :self :self->METHOD_NAME];
            [((id<InputMappingInterface>) self->inputMappingInterface) processInputMapping:gameKey :motionGestureInput];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->METHOD_NAME :e];
        } JAVA_END_TRY;
}


- (void) process {
        [[CompleteMotionGestureInputEventHandler getInstance] removeListener:self];
}

@end

