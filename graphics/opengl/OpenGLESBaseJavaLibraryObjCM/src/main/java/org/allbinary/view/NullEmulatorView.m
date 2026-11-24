// Generated Code Do Not Modify
#include "org/allbinary/view/NullEmulatorView.h"
#include "javax/microedition/lcdui/Displayable.h"
#include "javax/microedition/midlet/MIDlet.h"
#include "org/allbinary/view/EmulatorViewInterface.h"


NullEmulatorView* NullEmulatorView_NULL_EMULATOR_VIEW;

void NullEmulatorView_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullEmulatorView_NULL_EMULATOR_VIEW = ((NullEmulatorView*) [((NullEmulatorView*) [NullEmulatorView alloc]) init]);
}

@implementation NullEmulatorView

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) setMidlet:(MIDlet*)midlet {
}


- (void) onEmulatorInitComplete:(id)midletActivity {
}


- (void) onSetDisplayable:(Displayable*)displayable {
}

@end

