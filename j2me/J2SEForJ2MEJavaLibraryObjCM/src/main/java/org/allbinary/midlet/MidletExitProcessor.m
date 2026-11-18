// Generated Code Do Not Modify
#include "org/allbinary/midlet/MidletExitProcessor.h"
#include "javax/microedition/midlet/MIDlet.h"



void MidletExitProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MidletExitProcessor

- (void) initFields {
    
}


- (instancetype) init:(MIDlet*)midlet {
    self = [super init];
    [self initFields];
        self->midlet = midlet;
    return self;
}


// throws Exception
- (void) process {
        exit(0);
}

@end

