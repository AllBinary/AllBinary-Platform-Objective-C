// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/KeyPressesAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/util/HashtableUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#if __has_include("org/allbinary/util/HashtableUtil.h")
#include "org/allbinary/util/HashtableUtil.h"
#endif



void KeyPressesAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation KeyPressesAI

- (void) initFields {
    self->on = true;
    
}


- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->keys = ((int32_t*) java_array_new(sizeof(int32_t), [hashtable size]));
        id* objectArray = [[HashtableUtil getInstance] getKeysAsArray:hashtable];
        int32_t size = java_array_length(objectArray);
        for (int32_t index = 0; index < size; index++) {
            self->keys[index] = ((int32_t) [hashtable get:JAVA_BOX(((id) objectArray[index]))]);
        }
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        if (self->on) {
            for (int32_t index = 0; index < java_array_length(self->keys); index++) {
                [super processKeyAI:((int32_t) (self->keys[index]))];
            }
        }
}


// throws Exception
- (void) toggle {
        if ([self isOn]) {
            [self setOn:false];
        } else {
            [self setOn:true];
        }
}


// throws Exception
- (void) disable {
        [self setOn:false];
}


// throws Exception
- (void) enable {
        [self setOn:true];
}


- (void) setOn:(bool)on {
        self->on = on;
}


- (bool) isOn {
        return self->on;
}

@end

