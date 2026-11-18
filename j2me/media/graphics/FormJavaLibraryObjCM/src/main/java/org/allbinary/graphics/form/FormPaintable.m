// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/FormPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/form/PaintableForm.h"



void FormPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FormPaintable

- (void) initFields {
    
}


- (instancetype) init:(PaintableForm*)form {
    self = [super init];
    [self initFields];
        self->form = form;
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->form paint:graphics];
}


- (PaintableForm*) getForm {
        return self->form;
}

@end

