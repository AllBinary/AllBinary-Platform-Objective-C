// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/BasicTouchButtonsBuilder.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/input/motion/button/BaseTouchInput.h"
#include "org/allbinary/input/motion/button/CommonButtons.h"
#include "org/allbinary/input/motion/button/TouchButtonLocationHelper.h"
#include "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory.h"
#include "org/allbinary/input/motion/button/TouchButton.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/input/motion/button/TouchButtonUpResource.h"
#include "org/allbinary/input/motion/button/TouchButtonDownResource.h"
#include "org/allbinary/input/motion/button/TouchButtonTurnLeftResource.h"
#include "org/allbinary/input/motion/button/TouchButtonTurnRightResource.h"
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif



void BasicTouchButtonsBuilder_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
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


- (BasicArrayList*) getList {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
            BasicArrayList* list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            CommonButtons* commonButtons = [CommonButtons getInstance];
            TouchButtonLocationHelper* touchButtonLocationHelper = ((TouchButtonLocationHelper*) [((TouchButtonLocationHelper*) [TouchButtonLocationHelper alloc]) init]);
            BasicTouchButtonCellPositionFactory* basicTouchButtonCellPositionFactory = ((BasicTouchButtonCellPositionFactory*) [((BasicTouchButtonCellPositionFactory*) [BasicTouchButtonCellPositionFactory alloc]) init]);
            TouchButton* UP = [TouchButton createButton:[BasicTouchInputFactory getInstance]->UP :[TouchButtonUpResource getInstance] :commonButtons->NORMAL_BUTTON :basicTouchButtonCellPositionFactory->SECOND_FROM_BOTTOM_LEFT :[touchButtonLocationHelper getColumnsRemainderHalf] :[touchButtonLocationHelper getRowsRemainderHalf]];
            TouchButton* DOWN = [TouchButton createButton:[BasicTouchInputFactory getInstance]->DOWN :[TouchButtonDownResource getInstance] :commonButtons->NORMAL_BUTTON :basicTouchButtonCellPositionFactory->BOTTOM_LEFT :[touchButtonLocationHelper getColumnsRemainderHalf] :[touchButtonLocationHelper getRowsRemainderHalf]];
            TouchButton* LEFT = [TouchButton createButton:[BasicTouchInputFactory getInstance]->SPECIAL_BUTTON_FOUR :[TouchButtonTurnLeftResource getInstance] :commonButtons->NORMAL_BUTTON :basicTouchButtonCellPositionFactory->BOTTOM_SECOND_FROM_RIGHT :[touchButtonLocationHelper getColumnsRemainderHalf] :[touchButtonLocationHelper getRowsRemainderHalf]];
            TouchButton* RIGHT = [TouchButton createButton:[BasicTouchInputFactory getInstance]->SPECIAL_BUTTON_THREE :[TouchButtonTurnRightResource getInstance] :commonButtons->NORMAL_BUTTON :basicTouchButtonCellPositionFactory->BOTTOM_RIGHT :[touchButtonLocationHelper getColumnsRemainderHalf] :[touchButtonLocationHelper getRowsRemainderHalf]];
            [list add:UP];
            [list add:LEFT];
            [list add:RIGHT];
            [list add:DOWN];
            return list;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->GET_LIST :e];
            return [[BasicArrayListUtil getInstance] getImmutableInstance];
        } JAVA_END_TRY;
}

@end

