// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/BasicNeededTouchButtonsBuilder.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/input/motion/button/BaseTouchInput.h"
#include "org/allbinary/input/motion/button/TouchButtonLocationHelper.h"
#include "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory.h"
#include "org/allbinary/input/motion/button/CommonButtons.h"
#include "org/allbinary/input/motion/button/TouchButton.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"



void BasicNeededTouchButtonsBuilder_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicNeededTouchButtonsBuilder

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
            BasicArrayList* list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
            TouchButtonLocationHelper* touchButtonLocationHelper = [((TouchButtonLocationHelper*) [TouchButtonLocationHelper alloc]) init];
            BasicTouchButtonCellPositionFactory* basicTouchButtonCellPositionFactory = [((BasicTouchButtonCellPositionFactory*) [BasicTouchButtonCellPositionFactory alloc]) init];
            CommonButtons* commonButtons = [CommonButtons getInstance];
            Animation* animationInterface = [[NullAnimationFactory getFactoryInstance] getInstance:0];
            TouchButton* UP = [((TouchButton*) [TouchButton alloc]) init:[BasicTouchInputFactory getInstance]->UP :animationInterface :animationInterface :commonButtons->NORMAL_BUTTON :basicTouchButtonCellPositionFactory->SECOND_FROM_BOTTOM_LEFT :[touchButtonLocationHelper getColumnsRemainderHalf] :[touchButtonLocationHelper getRowsRemainderHalf]];
            TouchButton* DOWN = [((TouchButton*) [TouchButton alloc]) init:[BasicTouchInputFactory getInstance]->DOWN :animationInterface :animationInterface :commonButtons->NORMAL_BUTTON :basicTouchButtonCellPositionFactory->BOTTOM_LEFT :[touchButtonLocationHelper getColumnsRemainderHalf] :[touchButtonLocationHelper getRowsRemainderHalf]];
            TouchButton* LEFT = [((TouchButton*) [TouchButton alloc]) init:[BasicTouchInputFactory getInstance]->LEFT :animationInterface :animationInterface :commonButtons->NORMAL_BUTTON :basicTouchButtonCellPositionFactory->BOTTOM_SECOND_FROM_RIGHT :[touchButtonLocationHelper getColumnsRemainderHalf] :[touchButtonLocationHelper getRowsRemainderHalf]];
            TouchButton* RIGHT = [((TouchButton*) [TouchButton alloc]) init:[BasicTouchInputFactory getInstance]->RIGHT :animationInterface :animationInterface :commonButtons->NORMAL_BUTTON :basicTouchButtonCellPositionFactory->BOTTOM_RIGHT :[touchButtonLocationHelper getColumnsRemainderHalf] :[touchButtonLocationHelper getRowsRemainderHalf]];
            [list add:UP];
            [list add:DOWN];
            [list add:LEFT];
            [list add:RIGHT];
            return list;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->GET_LIST :e];
            return [[BasicArrayListUtil getInstance] getImmutableInstance];
        } JAVA_END_TRY;
}

@end

