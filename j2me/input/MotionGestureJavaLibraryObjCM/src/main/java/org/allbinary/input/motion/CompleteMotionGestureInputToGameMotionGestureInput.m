// Generated Code Do Not Modify
#include "org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.h"
#include "org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction.h"
#include "org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction.h"
#include "org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction.h"
#include "org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction.h"
#include "org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction.h"
#include "org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction.h"
#include "org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction.h"
#include "org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction.h"
#include "org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


static CompleteMotionGestureInputToGameMotionGestureInput* CompleteMotionGestureInputToGameMotionGestureInput_instance;

void CompleteMotionGestureInputToGameMotionGestureInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CompleteMotionGestureInputToGameMotionGestureInput_instance = ((CompleteMotionGestureInputToGameMotionGestureInput*) [((CompleteMotionGestureInputToGameMotionGestureInput*) [CompleteMotionGestureInputToGameMotionGestureInput alloc]) init]);
}

@implementation CompleteMotionGestureInputToGameMotionGestureInput

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CompleteMotionGestureInputToGameMotionGestureInput*) getInstance {
        return (CompleteMotionGestureInputToGameMotionGestureInput_staticInit(), CompleteMotionGestureInputToGameMotionGestureInput_instance);
}


- (void) initMethod {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        JAVA_TRY {
            [PreLogUtil put:"Compound Motion Gestures" :self :commonStrings->INIT];
            MotionGestureConfiguration* motionGestureConfiguration = [MotionGestureConfigurationFactory getInstance];
            TouchMotionGestureFactory* touchMotionGestureFactory = [TouchMotionGestureFactory getInstance];
            BasicArrayList* list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->DIAGONAL_DOWN_LEFT];
            [motionGestureConfiguration addMotionGestureAction:list :[DiagonalDownLeftTouchInputToGameKeyEventAction getInstance]];
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->DIAGONAL_DOWN_RIGHT];
            [motionGestureConfiguration addMotionGestureAction:list :[DiagonalDownRightTouchInputToGameKeyEventAction getInstance]];
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->DIAGONAL_UP_LEFT];
            [motionGestureConfiguration addMotionGestureAction:list :[DiagonalUpLeftTouchInputToGameKeyEventAction getInstance]];
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->DIAGONAL_UP_RIGHT];
            [motionGestureConfiguration addMotionGestureAction:list :[DiagonalUpRightTouchInputToGameKeyEventAction getInstance]];
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->LEFT];
            [motionGestureConfiguration addMotionGestureAction:list :[LeftTouchInputToGameKeyEventAction getInstance]];
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->RIGHT];
            [motionGestureConfiguration addMotionGestureAction:list :[RightTouchInputToGameKeyEventAction getInstance]];
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->DOWN];
            [motionGestureConfiguration addMotionGestureAction:list :[DownTouchInputToGameKeyEventAction getInstance]];
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->UP];
            [motionGestureConfiguration addMotionGestureAction:list :[UpTouchInputToGameKeyEventAction getInstance]];
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [list add:touchMotionGestureFactory->RELEASED];
            [motionGestureConfiguration addMotionGestureAction:list :[ReleaseTouchInputToGameKeyEventAction getInstance]];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->INIT :e];
        } JAVA_END_TRY;
}

@end

