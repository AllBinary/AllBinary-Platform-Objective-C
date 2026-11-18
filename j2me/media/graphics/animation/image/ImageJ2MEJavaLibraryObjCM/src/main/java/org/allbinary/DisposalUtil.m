// Generated Code Do Not Modify
#include "org/allbinary/DisposalUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/eclipse/swt/graphics/Resource.h"


static DisposalUtil* DisposalUtil_instance;

void DisposalUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DisposalUtil_instance = [((DisposalUtil*) [DisposalUtil alloc]) init];
}

@implementation DisposalUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (DisposalUtil*) getInstance {
        return (DisposalUtil_staticInit(), DisposalUtil_instance);
}


- (void) disposeImage:(Image*)image {
}


- (void) disposeResource:(Resource*)resource {
        if (![resource isDisposed]) {
            [resource dispose];
        }
}

@end

