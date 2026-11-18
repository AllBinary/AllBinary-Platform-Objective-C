// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonsMappingPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/CellPositionFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/input/motion/button/TouchButtonLocationHelper.h"
#include "org/allbinary/input/motion/button/CommonButtons.h"
#include "org/allbinary/input/motion/button/TouchButton.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/input/motion/button/TouchButtonBlankResource.h"



void TouchButtonsMappingPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonsMappingPaintable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    self->paintableTable = ((Paintable***) java_array_new2(sizeof(Paintable*), 0, 0));
    self->touchButtonLocationHelper = [((TouchButtonLocationHelper*) [TouchButtonLocationHelper alloc]) init];
}


- (instancetype) init:(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        self->foregroundColor = [basicColor intValue];
        [self init_];
    return self;
}


- (void) init_ {
        JAVA_TRY {
            self->paintableTable = [self createPaintableTable];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"updateRectangle" :e];
        } JAVA_END_TRY;
}


// throws Exception
- (Paintable***) createPaintableTable {
        int32_t totalColumns = [self->touchButtonLocationHelper getTotalColumns];
        int32_t totalRows = [self->touchButtonLocationHelper getTotalRows];
        Paintable*** paintableTable = ((Paintable***) java_array_new2(sizeof(Paintable*), totalColumns, totalRows));
        CellPositionFactory* cellPositionFactory = [CellPositionFactory getInstance];
        CommonButtons* commonButtons = [CommonButtons getInstance];
        for (int32_t index = totalColumns - 1; index >= 0; index--) {
            for (int32_t rowIndex = totalRows - 1; rowIndex >= 0; rowIndex--) {
                self->paintableTable[index][rowIndex] = [TouchButton createButton:[BasicTouchInputFactory getInstance]->NONE :[TouchButtonBlankResource getInstance] :commonButtons->NORMAL_BUTTON :[cellPositionFactory getInstanceColRow:index :rowIndex] :[self->touchButtonLocationHelper getColumnsRemainderHalf] :[self->touchButtonLocationHelper getRowsRemainderHalf]];
            }
        }
        return paintableTable;
}


- (void) paint:(Graphics*)graphics {
        int32_t totalColumns = [self->touchButtonLocationHelper getTotalColumns];
        int32_t totalRows = [self->touchButtonLocationHelper getTotalRows];
        for (int32_t index = totalColumns - 1; index >= 0; index--) {
            for (int32_t rowIndex = totalRows - 1; rowIndex >= 0; rowIndex--) {
                [self->paintableTable[index][rowIndex] paint:graphics];
            }
        }
}

@end

