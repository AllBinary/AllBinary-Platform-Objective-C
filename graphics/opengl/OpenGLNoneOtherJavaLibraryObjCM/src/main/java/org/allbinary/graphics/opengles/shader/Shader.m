// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/Shader.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"



void Shader_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Shader

- (void) initFields {
    self->shaderName = [StringUtil getInstance]->EMPTY_STRING;
    self->shaderStringList = [[BasicArrayListUtil getInstance] getImmutableInstance];
    self->shaderAsString = [StringUtil getInstance]->EMPTY_STRING;
    self->shaderHandle = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

