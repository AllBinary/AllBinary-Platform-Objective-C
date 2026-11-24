// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/graphics/form/ItemPaintableFactory.h"
#include "org/allbinary/graphics/form/FormType.h"
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#include "org/allbinary/graphics/form/MultipleScrollSelectionFormRectPaintable.h"
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#include "org/allbinary/graphics/form/MultipleScrollSelectionFormVerticalPaintable.h"
#include "org/allbinary/graphics/form/MultipleScrollSelectionFormHorizontalPaintable.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void MultipleScrollSelectionHorizontalForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MultipleScrollSelectionHorizontalForm

- (void) initFields {
    self->rectPaintable = [NullPaintable getInstance];
    self->multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = [ItemIndexPaintable getInstance];
    self->backgroundColor = [[BasicColorFactory getInstance]->TRANSPARENT_GREY intValue];
    self->myFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    self->logged = false;
    self->fontHeight = 0;
}


// throws Exception
+ (ScrollSelectionForm*) createForm:(const char*)title :(ABCustomItem**)items :(Rectangle*)rectangle :(FormType*)formType :(int32_t)border :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        ScrollSelectionForm* scrollSelectionForm = ((MultipleScrollSelectionHorizontalForm*) [((MultipleScrollSelectionHorizontalForm*) [MultipleScrollSelectionHorizontalForm alloc]) init:title :items :[ItemPaintableFactory getInstance] :border :backgroundBasicColor :foregroundBasicColor]);
        [scrollSelectionForm initMethod:rectangle :formType];
        return scrollSelectionForm;
}


- (instancetype) init:(const char*)title :(ABCustomItem**)items :(ItemPaintableFactory*)formPaintableFactory :(int32_t)border :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:title :items :formPaintableFactory :border :3 :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
        if ([J2MEUtil isJ2ME] || [J2MEUtil isHTML]) {
        } else {
            self->rectPaintable = ((MultipleScrollSelectionFormRectPaintable*) [((MultipleScrollSelectionFormRectPaintable*) [MultipleScrollSelectionFormRectPaintable alloc]) init:self]);
        }
    return self;
}


- (void) fillRect:(Graphics*)graphics {
        [graphics setColor:self->backgroundColor];
        [graphics fillRect:self->x :self->y :[self->rectangle getWidth] :[self->rectangle getHeight]];
}


// throws Exception
- (void) initMethod:(Rectangle*)rectangle :(FormType*)formType {
        [super initMethod:rectangle :formType];
        FormTypeFactory* formTypeFactory = [FormTypeFactory getInstance];
        if (formType == formTypeFactory->HORIZONTAL_FORM) {
            self->multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ((MultipleScrollSelectionFormHorizontalPaintable*) [((MultipleScrollSelectionFormHorizontalPaintable*) [MultipleScrollSelectionFormHorizontalPaintable alloc]) init:self]);
        } else if (formType == formTypeFactory->VERTICAL_CENTER_FORM) {
            self->multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ((MultipleScrollSelectionFormVerticalPaintable*) [((MultipleScrollSelectionFormVerticalPaintable*) [MultipleScrollSelectionFormVerticalPaintable alloc]) init:self]);
        } else if (formType == formTypeFactory->NULL_FORM_TYPE) {
        } else {
            java_throw(java_exception_new("Exception", formTypeFactory->UNK));
        }
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->fontHeight = [font getHeight];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


// throws Exception
- (int32_t) paintHorizontal:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        int32_t dx2 = [self paintItem:graphics :index :item :dx :dy] + self->border;
        [self->paintable paint:graphics :index :dx :dy];
        dx = dx2;
        return dx;
}


// throws Exception
- (int32_t) paintVertical:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        [self paintItem:graphics :index :item :dx :dy];
        [self->paintable paint:graphics :index :dx :dy];
        return dx;
}


- (int32_t) getStartIndex {
        return [self getSelectedIndex];
}


- (void) paint:(Graphics*)graphics {
        JAVA_TRY {
            [self->myFontProcessor process:graphics];
            int32_t start = [self getStartIndex];
            int32_t size = [self size];
            int32_t dx = self->x;
            int32_t dy = self->y;
            [self->rectPaintable paint:graphics];
            [graphics drawString:[self getTitle] :self->x :self->y - self->fontHeight :0];
            ABCustomItem* item = nullptr;
            for (int32_t index = start; index < size; index++) {
                item = [self get:index];
                if (dx >= [self->rectangle getMaxX]) {
                    if (self->logged) {
                    } else {
                        self->logged = true;
                        [PreLogUtil put:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"painting beyond maxx: "] appendint:[self->rectangle getMaxX]] toString] :self :self->canvasStrings->PAINT];
                    }
                }
                dx = [self->multipleScrollSelectionHorizontalFormTypeItemIndexPaintable paint:graphics :index :item :dx :dy];
            }
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil put:self->commonStrings->EXCEPTION :self :self->canvasStrings->PAINT];
        } JAVA_END_TRY;
}

@end

