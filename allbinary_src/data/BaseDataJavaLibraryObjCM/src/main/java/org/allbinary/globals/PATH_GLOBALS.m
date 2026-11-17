// Generated Code Do Not Modify
#include "org/allbinary/globals/PATH_GLOBALS.h"
#include "org/allbinary/logic/io/path/AbPathData.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"


static PATH_GLOBALS* PATH_GLOBALS_instance;

void PATH_GLOBALS_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PATH_GLOBALS_instance = [((PATH_GLOBALS*) [PATH_GLOBALS alloc]) init];
}

@implementation PATH_GLOBALS

- (void) initFields {
    
    
    
    
    
}


+ (PATH_GLOBALS*) getInstance {
        return (PATH_GLOBALS_staticInit(), PATH_GLOBALS_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        AbPathData* abPathData = [AbPathData getInstance];
        [stringBuffer append:"data"];
        [stringBuffer append:abPathData->SEPARATOR];
        self->DATA_PATH = [stringBuffer toString];
        [stringBuffer delete:0 :[stringBuffer length]];
        [stringBuffer append:self->DATA_PATH];
        [stringBuffer append:[CommonStrings getInstance]->INIT];
        [stringBuffer append:abPathData->SEPARATOR];
        self->INIT_PATH = [stringBuffer toString];
        [stringBuffer delete:0 :[stringBuffer length]];
        [stringBuffer append:self->DATA_PATH];
        [stringBuffer append:"log"];
        [stringBuffer append:abPathData->SEPARATOR];
        self->LOG_PATH = [stringBuffer toString];
        [stringBuffer delete:0 :[stringBuffer length]];
        [stringBuffer append:self->DATA_PATH];
        [stringBuffer append:"backup"];
        [stringBuffer append:abPathData->SEPARATOR];
        self->BACKUP_PATH = [stringBuffer toString];
        [stringBuffer delete:0 :[stringBuffer length]];
        [stringBuffer append:self->INIT_PATH];
        [stringBuffer append:"views"];
        [stringBuffer append:abPathData->SEPARATOR];
        self->VIEWS_PATH = [stringBuffer toString];
    return self;
}

@end

