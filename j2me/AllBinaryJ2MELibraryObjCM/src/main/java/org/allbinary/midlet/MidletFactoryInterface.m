// Generated Code Do Not Modify
#include "org/allbinary/midlet/MidletFactoryInterface.h"
#include "javax/microedition/midlet/MIDlet.h"
#include "org/allbinary/midlet/AllBinaryMidlet.h"



void MidletFactoryInterface_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MidletFactoryInterface

- (instancetype) init {
    self = [super init];
    return self;
}


- (MIDlet*) getInstance {
        return [AllBinaryMidlet getNullInstance];
}

@end

