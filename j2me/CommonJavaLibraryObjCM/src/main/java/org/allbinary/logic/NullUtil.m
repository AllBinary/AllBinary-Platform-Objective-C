// Generated Code Do Not Modify
#include "org/allbinary/logic/NullUtil.h"


static NullUtil* NullUtil_instance;

void NullUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullUtil_instance = ((NullUtil*) [((NullUtil*) [NullUtil alloc]) init]);
}

@implementation NullUtil

- (void) initFields {
    self->NULL_OBJECT = [ABObject new];
    self->NULL_CLASS = java_objc_class_name(self->NULL_OBJECT);
    self->NULL_OBJECT_ARRAY = ((id*) java_array_new(sizeof(id), 0));
    self->NULL_CHAR_ARRAY = ((uint16_t*) java_array_new(sizeof(uint16_t), 0));
    self->NULL_BYTE_ARRAY = ((int8_t*) java_array_new(sizeof(int8_t), 0));
    self->NULL_SHORT_ARRAY_ARRAY = ((int16_t**) java_array_new2(sizeof(int16_t), 0, 0));
    self->NULL_INT_ARRAY = ((int32_t*) java_array_new(sizeof(int32_t), 0));
    self->NULL_INT_ARRAY_ARRAY = ((int32_t**) java_array_new2(sizeof(int32_t), 0, 0));
    self->NULL_INT_ARRAY_ARRAY_ARRAY = ((int32_t***) java_array_new3(sizeof(int32_t), 0, 0, 0));
    self->NULL_FLOAT_ARRAY = ((float*) java_array_new(sizeof(float), 0));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (NullUtil*) getInstance {
        return (NullUtil_staticInit(), NullUtil_instance);
}

@end

