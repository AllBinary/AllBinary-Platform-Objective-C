// Generated Code Do Not Modify
#include "org/allbinary/logic/math/MathData.h"
#include "org/allbinary/string/CommonPhoneStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif


static MathData* MathData_instance;

void MathData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MathData_instance = ((MathData*) [((MathData*) [MathData alloc]) init]);
}

@implementation MathData

- (void) initFields {
    
    self->PLUS = "+";
    self->GREATER_THAN = ">";
    
    
    
}


+ (MathData*) getInstance {
        return (MathData_staticInit(), MathData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        CommonSeps* commonSeps = [CommonSeps getInstance];
        self->EQUALS = commonSeps->EQUALS;
        self->MINUS = commonSeps->DASH;
        self->DIVIDE = commonSeps->FORWARD_SLASH;
        self->MULTIPLY = [CommonPhoneStrings getInstance]->STAR;
    return self;
}

@end

