// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/screen/WebCommandProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/graphics/displayable/screen/AboutCommandProcessor.h"


static WebCommandProcessor* WebCommandProcessor_instance;

void WebCommandProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    WebCommandProcessor_instance = [((WebCommandProcessor*) [WebCommandProcessor alloc]) init];
}

@implementation WebCommandProcessor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->aboutCommandProcessor = [AboutCommandProcessor getInstance];
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (WebCommandProcessor*) getInstance {
        return (WebCommandProcessor_staticInit(), WebCommandProcessor_instance);
}


- (void) process:(CommandListener*)midletCommandListener :(Command*)command :(Canvas*)canvas {
        JAVA_TRY {
            [self->list removeAt:0];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->PROCESS :e];
        } JAVA_END_TRY;
}

@end

