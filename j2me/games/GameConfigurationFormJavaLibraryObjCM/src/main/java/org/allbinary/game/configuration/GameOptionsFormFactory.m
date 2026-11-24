// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameOptionsFormFactory.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/configuration/GameOptionsForm.h"


static GameOptionsFormFactory* GameOptionsFormFactory_instance;

void GameOptionsFormFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameOptionsFormFactory_instance = ((GameOptionsFormFactory*) [((GameOptionsFormFactory*) [GameOptionsFormFactory alloc]) init]);
}

@implementation GameOptionsFormFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameOptionsFormFactory*) getInstance {
        return (GameOptionsFormFactory_staticInit(), GameOptionsFormFactory_instance);
}


- (CommandForm*) initMethod:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        JAVA_TRY {
            return ((GameOptionsForm*) [((GameOptionsForm*) [GameOptionsForm alloc]) init:commandListener :title :backgrounBasicColor :foregroundBasicColor]);
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->INIT :e];
            return [CommandForm getNullCommandForm];
        } JAVA_END_TRY;
}

@end

