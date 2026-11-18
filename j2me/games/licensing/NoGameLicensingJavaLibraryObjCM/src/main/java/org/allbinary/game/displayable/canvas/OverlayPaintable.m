// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/OverlayPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"



void OverlayPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OverlayPaintable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) update {
        JAVA_TRY {
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->UPDATE :e];
        } JAVA_END_TRY;
}


- (void) paint:(Graphics*)graphics {
}

@end

