// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/VerticalFormProcessor.h"
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"



void VerticalFormProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VerticalFormProcessor

- (void) initFields {
    
}


- (instancetype) init:(ScrollCurrentSelectionForm*)scrollCurrentSelectionForm {
    self = [super init];
    [self initFields];
        self->scrollCurrentSelectionForm = scrollCurrentSelectionForm;
    return self;
}


// throws Exception
- (void) process {
        [self->scrollCurrentSelectionForm processVerticalForm];
        self->scrollCurrentSelectionForm->processor = [Processor getInstance];
}

@end

