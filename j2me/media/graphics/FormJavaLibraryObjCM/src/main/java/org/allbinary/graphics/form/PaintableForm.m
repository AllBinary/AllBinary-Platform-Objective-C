// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/PaintableForm.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/graphics/form/ABCustomForm.h"
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#include "org/allbinary/graphics/form/FormType.h"


static id PaintableForm_NULL_PAINTABLE_FORM;

void PaintableForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PaintableForm_NULL_PAINTABLE_FORM = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation PaintableForm

- (void) initFields {
    self->canvasStrings = [CanvasStrings getInstance];
    self->rectangle = (RectangleFactory_staticInit(), RectangleFactory_SINGLETON);
    self->x = 0;
    self->y = 0;
    self->formType = [FormTypeFactory getInstance]->NULL_FORM_TYPE;
}


+ (PaintableForm*) getNullPaintableForm {
        if ((PaintableForm_staticInit(), PaintableForm_NULL_PAINTABLE_FORM) == [NullUtil getInstance]->NULL_OBJECT) {
            PaintableForm_NULL_PAINTABLE_FORM = [((PaintableForm*) [PaintableForm alloc]) init:[StringUtil getInstance]->EMPTY_STRING :((ABCustomItem**) java_array_new(sizeof(ABCustomItem*), 0)) :[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE];
        }
        return ((PaintableForm*) (PaintableForm_staticInit(), PaintableForm_NULL_PAINTABLE_FORM));
}


- (instancetype) init:(const char*)title :(ABCustomItem**)items :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:title :items :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
        [self setSelectedIndex:0];
    return self;
}


// throws Exception
- (void) init_:(Rectangle*)rectangle :(FormType*)formType {
        self->rectangle = rectangle;
        GPoint* point = [self->rectangle getPoint];
        self->x = [point getX];
        self->y = [point getY];
        self->formType = formType;
}


- (int32_t) getWidth {
        return [self->rectangle getWidth];
}

@end

