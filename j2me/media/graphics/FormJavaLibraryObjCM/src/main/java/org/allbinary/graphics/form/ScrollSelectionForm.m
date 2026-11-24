// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/math/RectangleCollisionUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/graphics/form/PaintableForm.h"
#include "org/allbinary/graphics/form/ItemPaintableFactory.h"
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#include "org/allbinary/graphics/form/ItemPaintable.h"
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalPaintable.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalDx.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormVerticalPaintable.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormVericalDx.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormHorizontalPaintable.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormHorizontalDx.h"
#include "org/allbinary/graphics/form/FormType.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
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
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif


static id ScrollSelectionForm_NULL_SCROLL_SELECTION_FORM;
static id ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORM;
static const char* ScrollSelectionForm_INSIDE_FORM = " inside form";
static const char* ScrollSelectionForm_IS_IN_FORM = "isInForm";
static const char* ScrollSelectionForm_GET_SELECTED_INDEX = "getSelectedIndexForPoint";

void ScrollSelectionForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScrollSelectionForm_NULL_SCROLL_SELECTION_FORM = [NullUtil getInstance]->NULL_OBJECT;
    ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation ScrollSelectionForm

- (void) initFields {
    self->rectangleCollisionUtil = [RectangleCollisionUtil getInstance];
    
    
    
    self->scrollSelectionFormFormTypeItemIndexPaintable = [ItemIndexPaintable getInstance];
    self->formTypeItemIndexDx = [ItemIndexDx getInstance];
    self->paintable = [ItemPaintableFactory getInstance];
    
}


+ (PaintableForm*) createForm:(const char*)title :(ABCustomItem**)items :(ItemPaintableFactory*)formPaintableFactory :(int32_t)border :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        JAVA_TRY {
            if (formPaintableFactory == [ItemPaintableFactory getInstance]) {
                return ((ScrollSelectionForm*) [((ScrollSelectionForm*) [ScrollSelectionForm alloc]) init:title :items :formPaintableFactory :border :-3 :backgroundBasicColor :foregroundBasicColor]);
            } else {
                CommonStrings* commonStrings = [CommonStrings getInstance];
                LogUtil* logUtil = [LogUtil getInstance];
                [logUtil putF:commonStrings->EXCEPTION :logUtil :commonStrings->EXCEPTION];
                return [PaintableForm getNullPaintableForm];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            LogUtil* logUtil = [LogUtil getInstance];
            [logUtil put:commonStrings->EXCEPTION :logUtil :commonStrings->EXCEPTION :e];
            return [PaintableForm getNullPaintableForm];
        } JAVA_END_TRY;
}


+ (ScrollSelectionForm*) getNullScrollSelectionForm {
        if ((ScrollSelectionForm_staticInit(), ScrollSelectionForm_NULL_SCROLL_SELECTION_FORM) == [NullUtil getInstance]->NULL_OBJECT) {
            ScrollSelectionForm_NULL_SCROLL_SELECTION_FORM = [ScrollSelectionForm createForm:[StringUtil getInstance]->EMPTY_STRING :((ABCustomItem**) java_array_new(sizeof(ABCustomItem*), 0)) :[ItemPaintableFactory getInstance] :0 :[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE];
        }
        return ((ScrollSelectionForm*) (ScrollSelectionForm_staticInit(), ScrollSelectionForm_NULL_SCROLL_SELECTION_FORM));
}


+ (ScrollSelectionForm*) getNullScrollSelectionFormHorizontal {
        if ((ScrollSelectionForm_staticInit(), ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORM) == [NullUtil getInstance]->NULL_OBJECT) {
            ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = [ScrollSelectionForm createForm:[StringUtil getInstance]->EMPTY_STRING :((ABCustomItem**) java_array_new(sizeof(ABCustomItem*), 0)) :[ItemPaintableFactory getInstance] :0 :[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE];
        }
        return ((ScrollSelectionForm*) (ScrollSelectionForm_staticInit(), ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORM));
}


- (instancetype) init:(const char*)title :(ABCustomItem**)items :(ItemPaintableFactory*)formPaintableFactory :(int32_t)border :(int32_t)adjustedExtraBorder :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:title :items :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
        self->adjustedExtraBorder = adjustedExtraBorder;
        self->buttonBasicColor = foregroundBasicColor;
        self->border = border;
        self->halfBorder = (border >> 1);
        self->paintable = [formPaintableFactory getInstanceItemPaintable:self];
    return self;
}


// throws Exception
- (void) initMethod:(Rectangle*)rectangle :(FormType*)formType {
        [super initMethod:rectangle :formType];
        FormTypeFactory* formTypeFactory = [FormTypeFactory getInstance];
        if (formType == formTypeFactory->HORIZONTAL_FORM) {
            self->scrollSelectionFormFormTypeItemIndexPaintable = ((ScrollSelectionFormHorizontalPaintable*) [((ScrollSelectionFormHorizontalPaintable*) [ScrollSelectionFormHorizontalPaintable alloc]) init:self]);
            self->formTypeItemIndexDx = ((ScrollSelectionFormHorizontalDx*) [((ScrollSelectionFormHorizontalDx*) [ScrollSelectionFormHorizontalDx alloc]) init:self]);
        } else if (formType == formTypeFactory->VERTICAL_CENTER_FORM) {
            self->scrollSelectionFormFormTypeItemIndexPaintable = ((ScrollSelectionFormVerticalPaintable*) [((ScrollSelectionFormVerticalPaintable*) [ScrollSelectionFormVerticalPaintable alloc]) init:self]);
            self->formTypeItemIndexDx = ((ScrollSelectionFormVericalDx*) [((ScrollSelectionFormVericalDx*) [ScrollSelectionFormVericalDx alloc]) init:self]);
        } else if (formType == formTypeFactory->TEMP_HORIZONTAL_FORM) {
            self->scrollSelectionFormFormTypeItemIndexPaintable = ((ScrollSelectionFormTempHorizontalPaintable*) [((ScrollSelectionFormTempHorizontalPaintable*) [ScrollSelectionFormTempHorizontalPaintable alloc]) init:self]);
            self->formTypeItemIndexDx = ((ScrollSelectionFormTempHorizontalDx*) [((ScrollSelectionFormTempHorizontalDx*) [ScrollSelectionFormTempHorizontalDx alloc]) init:self]);
        } else if (formType == formTypeFactory->NULL_FORM_TYPE) {
        } else {
            java_throw(java_exception_new("Exception", formTypeFactory->UNK));
        }
}


- (int32_t) paintItemHorizontal:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y {
        int32_t width = [item getMinimumWidth];
        return x + width + self->border;
}


- (int32_t) paintItemVertical:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y {
        int32_t height = [item getMinimumHeight];
        return y + height + self->border;
}


- (int32_t) paintItemTempHorizontal:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y {
        return 0;
}


- (int32_t) getSelectedIndexForPointHorizontalDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return dx - self->halfBorder;
}


- (int32_t) getSelectedIndexForPointVerticalDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return dx + [self getDiffX:item];
}


- (int32_t) getSelectedIndexForPointTempHorizontalDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return dx + [self getDiffX:item];
}


- (int32_t) append:(ABCustomItem*)item {
        return [super append:item];
}


// throws Exception
- (ABCustomItem*) getSelectedItem:(GPoint*)point {
        int32_t index = [self getSelectedIndexForPoint:point];
        if (index != -1) {
            return [self get:index];
        } else {
            return [ABCustomItem getNullInstance];
        }
}


// throws Exception
- (int32_t) getItemIndex:(ABCustomItem*)item {
        ABCustomItem* nextItem = nullptr;
        int32_t size = [self size];
        for (int32_t index = 0; index < size; index++) {
            nextItem = ((ABCustomItem*) [self get:index]);
            if (nextItem == item) {
                return index;
            }
        }
        return -1;
}


- (int32_t) getStartIndex {
        return 0;
}


// throws Exception
- (int32_t) getSelectedIndexForPoint:(GPoint*)point {
        int32_t start = [self getStartIndex];
        int32_t size = [self size];
        int32_t dx = [self getDx];
        int32_t dy = [self getDy];
        FormTypeFactory* formTypeFactory = [FormTypeFactory getInstance];
        CommonLabels* commonLabels = [CommonLabels getInstance];
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:commonLabels->START_LABEL];
        [stringBuffer appendint:start];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:commonLabels->TOTAL_LABEL];
        [stringBuffer appendint:size];
        [self->logUtil putF:[stringBuffer toString] :self :ScrollSelectionForm_GET_SELECTED_INDEX];
        ABCustomItem* item = nullptr;
        int32_t width = 0;
        int32_t height = 0;
        int32_t diffX = 0;
        for (int32_t index = start; index < size; index++) {
            item = [self get:index];
            width = [item getMinimumWidth];
            height = [item getMinimumHeight];
            diffX = [self->formTypeItemIndexDx getDx:index :item :dx :dy];
            if ([self->rectangleCollisionUtil isInside:diffX :dy - self->halfBorder :diffX + width + self->border :dy + height + self->halfBorder + 1 :[point getX] :[point getY]]) {
                [stringBuffer delete:0 :[stringBuffer length]];
                [stringBuffer append:commonLabels->ITEM_LABEL];
                [stringBuffer append:[item getLabel]];
                [stringBuffer append:[CommonSeps getInstance]->SPACE];
                [stringBuffer append:commonLabels->INDEX_LABEL];
                [stringBuffer appendint:index];
                [self->logUtil putF:[stringBuffer toString] :self :ScrollSelectionForm_GET_SELECTED_INDEX];
                return index;
            }
            if (self->formType == formTypeFactory->HORIZONTAL_FORM) {
                dx = dx + width + self->border;
                if (dx > [self->rectangle getMaxX]) {
                    break;
                }
            } else if (self->formType == formTypeFactory->VERTICAL_CENTER_FORM) {
                dy = dy + height + self->border;
                if (dy > [self->rectangle getMaxY]) {
                    break;
                }
            } else if (self->formType == formTypeFactory->NULL_FORM_TYPE) {
            } else {
                java_throw(java_exception_new("Exception", formTypeFactory->UNK));
            }
        }
        return -1;
}


// throws Exception
- (int32_t) processInputKey:(int32_t)gameKeyCode {
        FormTypeFactory* formTypeFactory = [FormTypeFactory getInstance];
        if ([self size] == 0) {
            return -1;
        }
        int32_t index = [self getSelectedIndex];
        if (self->formType == formTypeFactory->HORIZONTAL_FORM || self->formType == formTypeFactory->TEMP_HORIZONTAL_FORM) {
            if (gameKeyCode == (Canvas_staticInit(), Canvas_RIGHT)) {
                index++;
            } else if (gameKeyCode == (Canvas_staticInit(), Canvas_LEFT)) {
                index--;
            }
        } else if (self->formType == formTypeFactory->VERTICAL_CENTER_FORM) {
            if (gameKeyCode == (Canvas_staticInit(), Canvas_DOWN)) {
                index++;
            } else if (gameKeyCode == (Canvas_staticInit(), Canvas_UP)) {
                index--;
            }
        } else if (self->formType == formTypeFactory->NULL_FORM_TYPE) {
        } else {
            java_throw(java_exception_new("Exception", formTypeFactory->UNK));
        }
        int32_t max = [self size] - 1;
        if (index < 0) {
            [self setSelectedIndex:0];
        } else if (index > max) {
            [self setSelectedIndex:max];
        } else {
            [self setSelectedIndex:index];
        }
        return -1;
}


- (bool) isInForm:(GPoint*)point {
        if ([self->rectangleCollisionUtil isInside:self->x :self->y - self->halfBorder :[self->rectangle getMaxX] + self->border :[self->rectangle getMaxY] + self->border :[point getX] :[point getY]]) {
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[[StringUtil getInstance] toString:point]] append:ScrollSelectionForm_INSIDE_FORM] toString] :self :ScrollSelectionForm_IS_IN_FORM];
            return true;
        }
        return false;
}


// throws Exception
- (int32_t) paintItem:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y {
        [item paintXY:graphics :x :y];
        int32_t width = [item getMinimumWidth];
        int32_t height = [item getMinimumHeight];
        [graphics setColor:[[self getButtonBasicColor] intValue]];
        int32_t adjustedBorder = 3;
        [graphics drawRect:x - self->halfBorder - adjustedBorder :y - self->halfBorder - adjustedBorder :width + self->border + self->adjustedExtraBorder :height + self->border + self->adjustedExtraBorder];
        return [self->scrollSelectionFormFormTypeItemIndexPaintable paint:graphics :index :item :x :y];
}


// throws Exception
- (int32_t) paintUnselectedItem:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y {
        [graphics setColor:[[self getButtonBasicColor] intValue]];
        [item paintUnselected:graphics :x :y];
        return [self->scrollSelectionFormFormTypeItemIndexPaintable paint:graphics :index :item :x :y];
}


- (int32_t) getDiffX:(ABCustomItem*)item {
        return 0;
}


- (int32_t) getDx {
        return self->x;
}


- (int32_t) getDy {
        return self->y;
}


- (void) setButtonBasicColor:(BasicColor*)buttonBasicColor {
        self->buttonBasicColor = buttonBasicColor;
}


- (BasicColor*) getButtonBasicColor {
        return self->buttonBasicColor;
}

@end

