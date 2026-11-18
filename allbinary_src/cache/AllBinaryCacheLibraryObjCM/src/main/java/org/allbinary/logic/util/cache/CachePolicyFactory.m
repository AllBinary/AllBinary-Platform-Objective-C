// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/CachePolicyFactory.h"
#include "org/allbinary/logic/util/cache/CachePolicy.h"


static CachePolicyFactory* CachePolicyFactory_instance;

void CachePolicyFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CachePolicyFactory_instance = [((CachePolicyFactory*) [CachePolicyFactory alloc]) init];
}

@implementation CachePolicyFactory

- (void) initFields {
    self->NAME = "lru";
    self->MAX_TIME_THOUSAND_MAX = [((CachePolicy*) [CachePolicy alloc]) init:self->NAME :(Long_staticInit(), Long_MAX_VALUE) :1000];
    self->THIRTY_MINUTES_TEN_THOUSAND_MAX = [((CachePolicy*) [CachePolicy alloc]) init:self->NAME :1000 * 60 * 30 :10000];
    self->THIRTY_MINUTES_FIFTY_THOUSAND_MAX = [((CachePolicy*) [CachePolicy alloc]) init:self->NAME :1000 * 60 * 30 :100000];
    self->ONE_MINUTE_FIVE_MAX = [((CachePolicy*) [CachePolicy alloc]) init:self->NAME :1000 * 60 * 1 :5];
    self->ONE_MINUTE_TEN_MAX = [((CachePolicy*) [CachePolicy alloc]) init:self->NAME :1000 * 60 * 1 :10];
    self->ONE_MINUTE_ONE_HUNDRED_MAX = [((CachePolicy*) [CachePolicy alloc]) init:self->NAME :1000 * 60 * 1 :100];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CachePolicyFactory*) getInstance {
        return (CachePolicyFactory_staticInit(), CachePolicyFactory_instance);
}

@end

