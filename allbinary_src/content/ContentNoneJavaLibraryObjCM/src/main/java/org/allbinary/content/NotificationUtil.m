// Generated Code Do Not Modify
#include "org/allbinary/content/NotificationUtil.h"
#include "javax/microedition/lcdui/Command.h"


static NotificationUtil* NotificationUtil_SINGLETON;

void NotificationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NotificationUtil_SINGLETON = ((NotificationUtil*) [((NotificationUtil*) [NotificationUtil alloc]) init]);
}

@implementation NotificationUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (NotificationUtil*) getInstance {
        return (NotificationUtil_staticInit(), NotificationUtil_SINGLETON);
}


- (void) notify:(Command*)command :(const char*)resource :(const char*)message {
}

@end

