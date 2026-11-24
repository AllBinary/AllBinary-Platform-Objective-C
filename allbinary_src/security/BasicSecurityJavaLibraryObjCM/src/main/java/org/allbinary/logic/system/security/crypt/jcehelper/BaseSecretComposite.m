// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


BaseSecretComposite* BaseSecretComposite_NULL_SECRET_COMPOSITE;

void BaseSecretComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BaseSecretComposite_NULL_SECRET_COMPOSITE = ((BaseSecretComposite*) [((BaseSecretComposite*) [BaseSecretComposite alloc]) init]);
}

@implementation BaseSecretComposite

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (int8_t*) encrypt:(int8_t*)array {
        return [NullUtil getInstance]->NULL_BYTE_ARRAY;
}


// throws Exception
- (int8_t*) decrypt:(int8_t*)array {
        return [NullUtil getInstance]->NULL_BYTE_ARRAY;
}

@end

