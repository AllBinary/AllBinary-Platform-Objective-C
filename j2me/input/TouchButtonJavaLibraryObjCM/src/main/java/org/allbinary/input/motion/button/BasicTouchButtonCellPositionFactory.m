// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory.h"
#include "org/allbinary/graphics/CellPosition.h"
#include "org/allbinary/graphics/CellPositionFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/input/motion/button/TouchButtonLocationHelper.h"



void BasicTouchButtonCellPositionFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicTouchButtonCellPositionFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
    self->SECOND_FROM_TOP_LEFT = nullptr;
    self->SECOND_FROM_TOP_RIGHT = nullptr;
    self->TOP_SECOND_FROM_LEFT = nullptr;
    self->TOP_SECOND_FROM_RIGHT = nullptr;
    
    
    
    self->THIRD_FROM_BOTTOM_RIGHT = nullptr;
    self->FOURTH_FROM_BOTTOM_RIGHT = nullptr;
    
    self->SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = nullptr;
    self->SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = nullptr;
    self->BOTTOM_THIRD_FROM_RIGHT = nullptr;
    self->BOTTOM_FOURTH_FROM_RIGHT = nullptr;
    
    
    self->THIRD_FROM_BOTTOM_LEFT = nullptr;
    
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        TouchButtonLocationHelper* touchButtonLocationHelper = ((TouchButtonLocationHelper*) [((TouchButtonLocationHelper*) [TouchButtonLocationHelper alloc]) init]);
        CellPositionFactory* cellPositionFactory = [CellPositionFactory getInstance];
        [cellPositionFactory initMethod:[touchButtonLocationHelper getTotalColumns] :[touchButtonLocationHelper getTotalRows]];
        self->TOP_LEFT = [cellPositionFactory getInstanceColRow:0 :0];
        self->TOP_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 1 :0];
        self->BOTTOM_LEFT = [cellPositionFactory getInstanceColRow:0 :[touchButtonLocationHelper getTotalRows] - 1];
        self->BOTTOM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 1 :[touchButtonLocationHelper getTotalRows] - 1];
        self->BOTTOM_SECOND_FROM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 2 :[touchButtonLocationHelper getTotalRows] - 1];
        self->SECOND_FROM_BOTTOM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 1 :[touchButtonLocationHelper getTotalRows] - 2];
        self->SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 2 :[touchButtonLocationHelper getTotalRows] - 2];
        self->BOTTOM_SECOND_FROM_LEFT = [cellPositionFactory getInstanceColRow:1 :[touchButtonLocationHelper getTotalRows] - 1];
        self->SECOND_FROM_BOTTOM_LEFT = [cellPositionFactory getInstanceColRow:0 :[touchButtonLocationHelper getTotalRows] - 2];
        self->SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = [cellPositionFactory getInstanceColRow:1 :[touchButtonLocationHelper getTotalRows] - 2];
        if ([touchButtonLocationHelper getTotalRows] > 2) {
            self->SECOND_FROM_TOP_LEFT = [cellPositionFactory getInstanceColRow:0 :1];
            self->SECOND_FROM_TOP_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 1 :1];
        } else {
            self->SECOND_FROM_TOP_LEFT = cellPositionFactory->NONE;
            self->SECOND_FROM_TOP_RIGHT = cellPositionFactory->NONE;
        }
        if ([touchButtonLocationHelper getTotalRows] >= 4) {
            self->THIRD_FROM_BOTTOM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 1 :[touchButtonLocationHelper getTotalRows] - 3];
            self->FOURTH_FROM_BOTTOM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 1 :[touchButtonLocationHelper getTotalRows] - 4];
            self->THIRD_FROM_BOTTOM_LEFT = [cellPositionFactory getInstanceColRow:0 :[touchButtonLocationHelper getTotalRows] - 3];
        } else {
            self->THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory->NONE;
            self->FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory->NONE;
            self->THIRD_FROM_BOTTOM_LEFT = cellPositionFactory->NONE;
        }
        if ([touchButtonLocationHelper getTotalColumns] >= 4) {
            self->SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 3 :[touchButtonLocationHelper getTotalRows] - 2];
            self->SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 4 :[touchButtonLocationHelper getTotalRows] - 2];
            self->BOTTOM_THIRD_FROM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 3 :[touchButtonLocationHelper getTotalRows] - 1];
            self->BOTTOM_FOURTH_FROM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 4 :[touchButtonLocationHelper getTotalRows] - 1];
            self->TOP_SECOND_FROM_LEFT = [cellPositionFactory getInstanceColRow:1 :0];
            self->TOP_SECOND_FROM_RIGHT = [cellPositionFactory getInstanceColRow:[touchButtonLocationHelper getTotalColumns] - 2 :0];
        } else {
            self->SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory->NONE;
            self->SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory->NONE;
            self->BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory->NONE;
            self->BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory->NONE;
            self->TOP_SECOND_FROM_LEFT = cellPositionFactory->NONE;
            self->TOP_SECOND_FROM_RIGHT = cellPositionFactory->NONE;
        }
    return self;
}

@end

