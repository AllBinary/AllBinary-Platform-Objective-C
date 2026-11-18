// Generated Code Do Not Modify
#include "org/allbinary/layer/NullLayer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/layer/Layer.h"


static NullLayer* NullLayer_instance;

void NullLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullLayer_instance = [((NullLayer*) [NullLayer alloc]) init];
}

@implementation NullLayer


+ (NullLayer*) getInstance {
        return (NullLayer_staticInit(), NullLayer_instance);
}


- (instancetype) init {
        self = [super init:0 :0];
    return self;
}


- (void) paint:(Graphics*)graphics {
}

@end

