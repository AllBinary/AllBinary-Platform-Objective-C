// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigType.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypes.h"


static LogConfigTypeFactory* LogConfigTypeFactory_instance;

void LogConfigTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LogConfigTypeFactory_instance = [((LogConfigTypeFactory*) [LogConfigTypeFactory alloc]) init];
}

@implementation LogConfigTypeFactory

- (void) initFields {
    self->NO_DESCRIPTION = "No Description";
    self->OS = [((LogConfigType*) [LogConfigType alloc]) init:"Operating System" :self->NO_DESCRIPTION];
    self->FACTORYERROR = [((LogConfigType*) [LogConfigType alloc]) init:"Factory Error" :self->NO_DESCRIPTION];
    self->FILE = [((LogConfigType*) [LogConfigType alloc]) init:"File" :self->NO_DESCRIPTION];
    self->FILEERROR = [((LogConfigType*) [LogConfigType alloc]) init:"File Error" :self->NO_DESCRIPTION];
    self->IDLOGGING = [((LogConfigType*) [LogConfigType alloc]) init:"ID Logging" :self->NO_DESCRIPTION];
    self->REPLACE = [((LogConfigType*) [LogConfigType alloc]) init:"Replace" :self->NO_DESCRIPTION];
    self->REPLACE_INFO = [((LogConfigType*) [LogConfigType alloc]) init:"Replace Info" :self->NO_DESCRIPTION];
    self->REPLACEERROR = [((LogConfigType*) [LogConfigType alloc]) init:"Replace Error" :self->NO_DESCRIPTION];
}


+ (LogConfigTypeFactory*) getInstance {
        return (LogConfigTypeFactory_staticInit(), LogConfigTypeFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [(LogConfigTypes_staticInit(), LogConfigTypes_LOGGING) add:self->OS];
        [(LogConfigTypes_staticInit(), LogConfigTypes_LOGGING) add:self->FACTORYERROR];
    return self;
}

@end

