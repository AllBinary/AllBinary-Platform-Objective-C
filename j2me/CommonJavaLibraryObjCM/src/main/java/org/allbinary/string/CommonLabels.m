// Generated Code Do Not Modify
#include "org/allbinary/string/CommonLabels.h"


static CommonLabels* CommonLabels_instance;

void CommonLabels_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CommonLabels_instance = [((CommonLabels*) [CommonLabels alloc]) init];
}

@implementation CommonLabels

- (void) initFields {
    self->WIDTH_LABEL = " Width: ";
    self->HEIGHT_LABEL = " Height: ";
    self->END_LABEL = "End: ";
    self->TOTAL_LABEL = "Total: ";
    self->INDEX_LABEL = "index: ";
    self->START_LABEL = "Start: ";
    self->COMMAND_LABEL = "Command: ";
    self->NAME_LABEL = "Name: ";
    self->START = self->START_LABEL;
    self->ELAPSED = " Elapsed: ";
    self->CURRENT = " Current: ";
    self->NEXT = "Next";
    self->ITEM_LABEL = "Item: ";
    self->RESULT_ = "Result: ";
    self->COLON_SEP = ": ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CommonLabels*) getInstance {
        return (CommonLabels_staticInit(), CommonLabels_instance);
}

@end

