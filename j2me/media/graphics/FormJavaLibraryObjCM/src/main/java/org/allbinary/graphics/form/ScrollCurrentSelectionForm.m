// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#include "org/allbinary/graphics/form/ItemPaintableFactory.h"
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#include "org/allbinary/graphics/form/VerticalFormProcessor.h"
#include "org/allbinary/graphics/form/VerticalItemIndexDx.h"
#include "org/allbinary/graphics/form/HorizontalFormProcessor.h"
#include "org/allbinary/graphics/form/HorizontalItemIndexDx.h"
#include "org/allbinary/graphics/form/TempHorizontalFormProcessor.h"
#include "org/allbinary/graphics/form/TempHorizontalItemIndexDx.h"
#include "org/allbinary/graphics/form/FormType.h"



void ScrollCurrentSelectionForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScrollCurrentSelectionForm

- (void) initFields {
    
    self->updateMyFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->myFontProcessor = self->updateMyFontProcessor;
    self->processor = [Processor getInstance];
    self->preItemIndexDx = [ItemIndexDx getInstance];
    self->dx = 0;
    self->dy = 0;
    self->maxWidth = 0;
}


- (instancetype) init:(const char*)title :(ABCustomItem**)items :(ItemPaintableFactory*)formPaintableFactory :(int32_t)border :(int32_t)adjustedExtraBorder :(bool)moveForSmallScreen :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:title :items :formPaintableFactory :border :adjustedExtraBorder :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
        self->moveForSmallScreen = moveForSmallScreen;
    return self;
}


// throws Exception
- (void) init_:(Rectangle*)rectangle :(FormType*)formType {
        [super init_:rectangle :formType];
        FormTypeFactory* formTypeFactory = [FormTypeFactory getInstance];
        if (formType == formTypeFactory->TEMP_HORIZONTAL_FORM) {
            self->processor = [((TempHorizontalFormProcessor*) [TempHorizontalFormProcessor alloc]) init:self];
            self->preItemIndexDx = [((TempHorizontalItemIndexDx*) [TempHorizontalItemIndexDx alloc]) init:self];
        } else if (formType == formTypeFactory->HORIZONTAL_FORM) {
            self->processor = [((HorizontalFormProcessor*) [HorizontalFormProcessor alloc]) init:self];
            self->preItemIndexDx = [((HorizontalItemIndexDx*) [HorizontalItemIndexDx alloc]) init:self];
        } else if (formType == formTypeFactory->VERTICAL_CENTER_FORM) {
            self->processor = [((VerticalFormProcessor*) [VerticalFormProcessor alloc]) init:self];
            self->preItemIndexDx = [((VerticalItemIndexDx*) [VerticalItemIndexDx alloc]) init:self];
        } else if (formType == formTypeFactory->NULL_FORM_TYPE) {
        } else {
            [self->logUtil putF:formTypeFactory->UNK :self :self->commonStrings->INIT];
        }
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (void) updateMeasurement:(Graphics*)graphics {
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) processTempHorizontalForm {
        self->dx = self->x - 30 + ([self->rectangle getWidth] >> 1);
        self->dy = self->y;
}


- (void) processHorizontalForm {
        int32_t size = [self size];
        int32_t totalWidth = 0;
        ABCustomItem* item = nullptr;
        for (int32_t index = 0; index < size; index++) {
            item = [self get:index];
            totalWidth += [item getMinimumWidth] + self->border;
        }
        self->dx = self->x + ([self->rectangle getWidth] >> 1) - (totalWidth >> 1);
        self->dy = self->y + ([self->rectangle getHeight] >> 1);
        if (self->moveForSmallScreen) {
            int32_t maxTitleHeight = 175;
            if (self->dy < maxTitleHeight) {
                self->dy = maxTitleHeight;
            }
        }
}


- (void) processVerticalForm {
        int32_t totalHeight = 0;
        int32_t size = [self size];
        ABCustomItem* item2 = nullptr;
        for (int32_t index = 0; index < size; index++) {
            item2 = [self get:index];
            if (self->maxWidth < [item2 getMinimumWidth]) {
                self->maxWidth = [item2 getMinimumWidth];
            }
            totalHeight += [item2 getMinimumHeight] + self->border;
        }
        self->dx = (([self->rectangle getWidth] - self->maxWidth) / 2);
        if ([self size] > 0) {
            self->dy = self->y + (([self->rectangle getHeight] - totalHeight) / 2);
            if (self->moveForSmallScreen) {
                int32_t maxTitleHeight = 175;
                if (self->dy < maxTitleHeight) {
                    self->dy = maxTitleHeight;
                }
            }
        } else {
            self->dy = self->y;
        }
}


- (int32_t) getXTempHorizontalForm:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return [self getDiffX:item];
}


- (int32_t) getXHorizontalForm:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return 0;
}


- (int32_t) getXVerticalForm:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return [self getDiffX:item] + self->halfBorder;
}


- (int32_t) getDiffX:(ABCustomItem*)item {
        return ((self->maxWidth - [item getMinimumWidth]) >> 1);
}


- (int32_t) getDx {
        return self->dx;
}


- (int32_t) getDy {
        return self->dy;
}


- (void) paint:(Graphics*)graphics {
        JAVA_TRY {
            [self->processor process];
            int32_t delta = 0;
            int32_t deltaX = [self getDx];
            int32_t deltaY = [self getDy];
            int32_t size = [self size];
            FormTypeFactory* formTypeFactory = [FormTypeFactory getInstance];
            ABCustomItem* item = nullptr;
            for (int32_t index = 0; index < size; index++) {
                item = [self get:index];
                int32_t diffX = [self->preItemIndexDx getDx:index :item :self->dx :self->dy];
                if (index == [self getSelectedIndex]) {
                    delta = [self paintItem:graphics :index :item :deltaX + diffX :deltaY];
                    [self->paintable paint:graphics :index :deltaX + diffX :deltaY];
                } else {
                    delta = [self paintUnselectedItem:graphics :index :item :deltaX + diffX :deltaY];
                    [self->paintable paint:graphics :index :deltaX + diffX :deltaY];
                }
                if (self->formType == formTypeFactory->TEMP_HORIZONTAL_FORM) {
                } else if (self->formType == formTypeFactory->HORIZONTAL_FORM) {
                    deltaX = delta;
                } else if (self->formType == formTypeFactory->VERTICAL_CENTER_FORM) {
                    deltaY = delta;
                } else {
                    java_throw(java_exception_new("Exception", formTypeFactory->UNK));
                }
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->canvasStrings->PAINT :e];
        } JAVA_END_TRY;
}

@end

