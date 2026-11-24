// Generated Code Do Not Modify
#include "org/allbinary/string/CommonPhoneStrings.h"


static CommonPhoneStrings* CommonPhoneStrings_instance;

void CommonPhoneStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CommonPhoneStrings_instance = ((CommonPhoneStrings*) [((CommonPhoneStrings*) [CommonPhoneStrings alloc]) init]);
}

@implementation CommonPhoneStrings

- (void) initFields {
    self->UP = "UP";
    self->DOWN = "DOWN";
    self->LEFT = "LEFT";
    self->RIGHT = "RIGHT";
    self->ZERO = "0";
    self->ONE = "1";
    self->TWO = "2";
    self->THREE = "3";
    self->FOUR = "4";
    self->FIVE = "5";
    self->SIX = "6";
    self->SEVEN = "7";
    self->EIGHT = "8";
    self->NINE = "9";
    self->POUND = "#";
    self->STAR = "*";
    self->FIRE = "FIRE";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CommonPhoneStrings*) getInstance {
        return (CommonPhoneStrings_staticInit(), CommonPhoneStrings_instance);
}

@end

