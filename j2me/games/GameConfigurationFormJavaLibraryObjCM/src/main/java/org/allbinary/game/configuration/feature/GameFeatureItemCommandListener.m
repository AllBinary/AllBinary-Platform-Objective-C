// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/GameFeatureItemCommandListener.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/Item.h"
#include "org/allbinary/game/configuration/GameConfigurationGauge.h"
#include "org/allbinary/game/configuration/GameConfigurationUtil.h"
#include "org/allbinary/game/configuration/GameOptionsForm.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/midlet/MidletStrings.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"



void GameFeatureItemCommandListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameFeatureItemCommandListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


- (instancetype) init:(GameOptionsForm*)gameOptionsForm {
    self = [super init];
    [self initFields];
        self->gameOptionsForm = gameOptionsForm;
    return self;
}


- (void) commandAction:(Command*)command :(Item*)item {
        JAVA_TRY {
            const char* itemLabel = [item getLabel];
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->ITEM_LABEL] append:itemLabel] toString] :self :[MidletStrings getInstance]->COMMAND_ACTION];
            if (java_objc_instanceof(item, [GameConfigurationGauge class])) {
                [[GameConfigurationUtil getInstance] change:self->gameOptionsForm :((GameConfigurationGauge*) item)];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :[MidletStrings getInstance]->COMMAND_ACTION :e];
        } JAVA_END_TRY;
}

@end

