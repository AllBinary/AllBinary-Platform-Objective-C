// Generated Code Do Not Modify
#include "org/allbinary/PostGameCommandFactory.h"
#include "javax/microedition/lcdui/Canvas.h"


static PostGameCommandFactory* PostGameCommandFactory_instance;

void PostGameCommandFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PostGameCommandFactory_instance = [((PostGameCommandFactory*) [PostGameCommandFactory alloc]) init];
}

@implementation PostGameCommandFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PostGameCommandFactory*) getInstance {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) addCommands:(Canvas*)canvas {
}

@end

