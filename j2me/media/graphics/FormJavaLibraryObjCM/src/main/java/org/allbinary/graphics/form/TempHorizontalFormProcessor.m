// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/TempHorizontalFormProcessor.h"
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"



void TempHorizontalFormProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TempHorizontalFormProcessor

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
        [self->scrollCurrentSelectionForm processTempHorizontalForm];
        self->scrollCurrentSelectionForm->processor = [Processor getInstance];
}

@end

