// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/CacheTypeFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/cache/CacheType.h"


static CacheTypeFactory* CacheTypeFactory_instance;

void CacheTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CacheTypeFactory_instance = [((CacheTypeFactory*) [CacheTypeFactory alloc]) init];
}

@implementation CacheTypeFactory

- (void) initFields {
    self->NO_CACHE = [((CacheType*) [CacheType alloc]) init:[StringUtil getInstance]->EMPTY_STRING :[StringUtil getInstance]->EMPTY_STRING];
    self->CACHE = [((CacheType*) [CacheType alloc]) init:[StringUtil getInstance]->EMPTY_STRING :[StringUtil getInstance]->EMPTY_STRING];
    self->SET = [((CacheType*) [CacheType alloc]) init:[StringUtil getInstance]->EMPTY_STRING :"Set"];
    self->CACHE_VECTOR = [((CacheType*) [CacheType alloc]) init:[StringUtil getInstance]->EMPTY_STRING :[StringUtil getInstance]->EMPTY_STRING];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CacheTypeFactory*) getInstance {
        return (CacheTypeFactory_staticInit(), CacheTypeFactory_instance);
}

@end

