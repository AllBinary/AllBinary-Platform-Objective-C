// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/MultipleScrollSelectionFormRectPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h"



void MultipleScrollSelectionFormRectPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MultipleScrollSelectionFormRectPaintable

- (void) initFields {
    
}


- (instancetype) init:(MultipleScrollSelectionHorizontalForm*)multipleScrollSelectionForm {
    self = [super init];
    [self initFields];
        self->multipleScrollSelectionForm = multipleScrollSelectionForm;
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->multipleScrollSelectionForm fillRect:graphics];
}

@end

