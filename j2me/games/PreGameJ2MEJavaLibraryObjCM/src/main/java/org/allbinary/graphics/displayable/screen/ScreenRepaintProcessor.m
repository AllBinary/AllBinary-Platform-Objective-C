// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessor.h"
#include "javax/microedition/lcdui/Displayable.h"
#include "org/allbinary/graphics/displayable/screen/ScreenRepaintUtil.h"



void ScreenRepaintProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScreenRepaintProcessor

- (void) initFields {
    
}


- (instancetype) init:(Displayable*)displayable {
    self = [super init];
    [self initFields];
        self->displayable = displayable;
    return self;
}


// throws Exception
- (void) process {
        [ScreenRepaintUtil repaint:self->displayable];
}

@end

