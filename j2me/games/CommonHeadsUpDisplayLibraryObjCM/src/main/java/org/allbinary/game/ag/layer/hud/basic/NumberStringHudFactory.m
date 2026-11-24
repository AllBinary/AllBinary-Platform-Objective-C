// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/NumberStringHudFactory.h"
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/ag/layer/hud/basic/NumberStringHud.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/game/graphics/hud/BasicHudFactory.h")
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif


static id NumberStringHudFactory_instance;

void NumberStringHudFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NumberStringHudFactory_instance = [NullUtil getInstance];
}

@implementation NumberStringHudFactory

- (void) initFields {
    self->NULL_NUMBER_STRING_HUD = [self createHud];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (NumberStringHudFactory*) getInstance {
        if ((NumberStringHudFactory_staticInit(), NumberStringHudFactory_instance) == [NullUtil getInstance]) {
            NumberStringHudFactory_instance = ((NumberStringHudFactory*) [((NumberStringHudFactory*) [NumberStringHudFactory alloc]) init]);
        }
        return ((NumberStringHudFactory*) (NumberStringHudFactory_staticInit(), NumberStringHudFactory_instance));
}


- (NumberStringHud*) createHud {
        JAVA_TRY {
            return ((NumberStringHud*) [((NumberStringHud*) [NumberStringHud alloc]) init:[StringUtil getInstance]->EMPTY_STRING :9 :[BasicHudFactory getInstance]->ABSOLUTE :1 :0 :[BasicColorFactory getInstance]->NULL_COLOR]);
        } JAVA_CATCH(Exception, e) {
            LogUtil* logUtil = [LogUtil getInstance];
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
            java_throw(java_exception_new("RuntimeException", ""));
        } JAVA_END_TRY;
}

@end

