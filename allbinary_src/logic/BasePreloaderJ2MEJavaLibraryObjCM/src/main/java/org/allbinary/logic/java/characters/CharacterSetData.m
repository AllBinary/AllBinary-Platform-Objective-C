// Generated Code Do Not Modify
#include "org/allbinary/logic/java/characters/CharacterSetData.h"


static CharacterSetData* CharacterSetData_instance;

void CharacterSetData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CharacterSetData_instance = [((CharacterSetData*) [CharacterSetData alloc]) init];
}

@implementation CharacterSetData

- (void) initFields {
    self->US_ASCII = "US-ASCII";
    self->ISO_8859_1 = "ISO-8859-1";
    self->UTF_8 = "UTF-8";
    self->UTF_16 = "UTF-16";
    self->UTF_16BE = "UTF-16BE";
    self->UTF_16LE = "UTF-16LE";
}


+ (CharacterSetData*) getInstance {
        return (CharacterSetData_staticInit(), CharacterSetData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

