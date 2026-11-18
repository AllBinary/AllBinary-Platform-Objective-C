// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/InGameOptionsFormFactory.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#include "org/allbinary/init/Init.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/configuration/InGameOptionsForm.h"


static id InGameOptionsFormFactory_instance;

void InGameOptionsFormFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InGameOptionsFormFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation InGameOptionsFormFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->SINGLETON = [CommandForm getNullCommandForm];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (InGameOptionsFormFactory*) getInstance {
        if ((InGameOptionsFormFactory_staticInit(), InGameOptionsFormFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            InGameOptionsFormFactory_instance = [((InGameOptionsFormFactory*) [InGameOptionsFormFactory alloc]) init];
        }
        return ((InGameOptionsFormFactory*) (InGameOptionsFormFactory_staticInit(), InGameOptionsFormFactory_instance));
}


- (void) init_:(CommandListener*)commandListener :(Init*)initInterface :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        JAVA_TRY {
            if (self->SINGLETON == [CommandForm getNullCommandForm]) {
                [initInterface init_];
                self->SINGLETON = [((InGameOptionsForm*) [InGameOptionsForm alloc]) init:commandListener :title :backgrounBasicColor :foregroundBasicColor];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->INIT :e];
        } JAVA_END_TRY;
}


- (CommandForm*) get {
        return self->SINGLETON;
}

@end

