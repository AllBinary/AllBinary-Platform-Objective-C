// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameConfigurationUtil.h"
#include "javax/microedition/lcdui/Item.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/configuration/GameConfigurationSingleton.h"
#include "org/allbinary/game/configuration/GameConfiguration.h"
#include "org/allbinary/game/configuration/GameOptionsForm.h"
#include "org/allbinary/game/configuration/GameConfigurationGauge.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"


static GameConfigurationUtil* GameConfigurationUtil_instance;

void GameConfigurationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameConfigurationUtil_instance = [((GameConfigurationUtil*) [GameConfigurationUtil alloc]) init];
}

@implementation GameConfigurationUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->GAUGE_UPDATE = "Gauge Update: ";
    self->FROM = " from: ";
    self->TO = " to: ";
    self->COMPETITION_VALUE = 1;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameConfigurationUtil*) getInstance {
        return (GameConfigurationUtil_staticInit(), GameConfigurationUtil_instance);
}


// throws Exception
- (void) change:(GameOptionsForm*)gameOptionsForm :(GameConfigurationGauge*)gauge {
        [self update:gauge];
        GameConfigurationSingleton* gameConfigurationSingleton = [GameConfigurationSingleton getInstance];
        GameConfiguration* gameConfiguration = [gameConfigurationSingleton getInstanceByName:[gauge getLabel]];
        [self updateChallange:gameOptionsForm :gameConfiguration];
}


// throws Exception
- (void) update:(GameConfigurationGauge*)gauge {
        GameConfigurationSingleton* gameConfigurationSingleton = [GameConfigurationSingleton getInstance];
        GameConfiguration* gameConfiguration = [gameConfigurationSingleton getInstanceByName:[gauge getLabel]];
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        int32_t value = [smallIntegerSingletonFactory getAt:[gauge getValue] + ((int32_t) ([gameConfiguration getMinValue]))];
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:self->GAUGE_UPDATE];
        [stringBuffer append:[gameConfiguration getName]];
        [stringBuffer append:self->FROM];
        [stringBuffer appendint:((int32_t) ((int32_t) ([gameConfiguration getValue])))];
        [stringBuffer append:self->TO];
        [stringBuffer appendint:((int32_t) ((int32_t) (value)))];
        [self->logUtil putF:[stringBuffer toString] :self :self->commonStrings->UPDATE];
        [gameConfiguration setValue:value];
}


// throws Exception
- (void) setDefault:(GameConfigurationGauge*)gauge {
        GameConfigurationSingleton* gameConfigurationSingleton = [GameConfigurationSingleton getInstance];
        GameConfiguration* gameConfiguration = [gameConfigurationSingleton getInstanceByName:[gauge getLabel]];
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:"Gauge Default: "];
        [stringBuffer append:[gameConfiguration getName]];
        [stringBuffer append:self->TO];
        [stringBuffer appendint:((int32_t) ((int32_t) ([gameConfiguration getDefaultValue])))];
        [self->logUtil putF:[stringBuffer toString] :self :"setDefault"];
        [gauge setValue:((int32_t) ([gameConfiguration getDefaultValue])) - ((int32_t) ([gameConfiguration getMinValue]))];
        [gameConfiguration setValue:[gameConfiguration getDefaultValue]];
}


// throws Exception
- (void) updateChallange:(GameOptionsForm*)gameOptionsForm :(GameConfiguration*)gameConfiguration {
        GameConfigurationSingleton* gameConfigurationSingleton = [GameConfigurationSingleton getInstance];
        GameConfigurationCentral* gameConfigurationCentral = [GameConfigurationCentral getInstance];
        if (gameConfiguration == gameConfigurationCentral->CHALLENGE_LEVEL) {
            [self->logUtil putF:self->commonStrings->START :self :"updateChallange"];
            [gameConfigurationCentral->COLLIDE_DAMAGE setValue:[gameConfiguration getValue]];
            [gameConfigurationCentral->ATTACK_CHALLENGE_LEVEL setValue:[gameConfiguration getValue]];
            [gameConfigurationCentral->DURABILITY_CHALLENGE_LEVEL setValue:[gameConfiguration getValue]];
            [gameConfigurationCentral->SPEED_CHALLENGE_LEVEL setValue:[gameConfiguration getValue]];
            int32_t size = [gameOptionsForm size];
            for (int32_t index = 0; index < size; index++) {
                Item* item = [gameOptionsForm get:index];
                if (java_objc_instanceof(item, [GameConfigurationGauge class])) {
                    GameConfigurationGauge* gauge = ((GameConfigurationGauge*) item);
                    const char* name = [item getLabel];
                    GameConfiguration* nextGameConfiguration = [gameConfigurationSingleton getInstanceByName:name];
                    if (nextGameConfiguration == gameConfigurationCentral->COLLIDE_DAMAGE) {
                        [gauge setValue:((int32_t) ([gameConfigurationCentral->COLLIDE_DAMAGE getValue])) - ((int32_t) ([gameConfiguration getMinValue]))];
                    } else if (nextGameConfiguration == gameConfigurationCentral->DURABILITY_CHALLENGE_LEVEL) {
                        [gauge setValue:((int32_t) ([gameConfigurationCentral->DURABILITY_CHALLENGE_LEVEL getValue])) - ((int32_t) ([gameConfiguration getMinValue]))];
                    } else if (nextGameConfiguration == gameConfigurationCentral->ATTACK_CHALLENGE_LEVEL) {
                        [gauge setValue:((int32_t) ([gameConfigurationCentral->ATTACK_CHALLENGE_LEVEL getValue])) - ((int32_t) ([gameConfiguration getMinValue]))];
                    } else if (nextGameConfiguration == gameConfigurationCentral->SPEED_CHALLENGE_LEVEL) {
                        [gauge setValue:((int32_t) ([gameConfigurationCentral->SPEED_CHALLENGE_LEVEL getValue])) - ((int32_t) ([gameConfiguration getMinValue]))];
                    }
                }
            }
        }
}


- (void) updateCompetitionValue {
        [self->logUtil putF:self->commonStrings->START :self :"updateCompetitionValue"];
        GameConfigurationCentral* gameConfigurationCentral = [GameConfigurationCentral getInstance];
        self->COMPETITION_VALUE = ((int32_t) ([gameConfigurationCentral->COLLIDE_DAMAGE getValue])) + ((int32_t) ([gameConfigurationCentral->ATTACK_CHALLENGE_LEVEL getValue])) + ((int32_t) ([gameConfigurationCentral->DURABILITY_CHALLENGE_LEVEL getValue])) + ((int32_t) ([gameConfigurationCentral->SPEED_CHALLENGE_LEVEL getValue]));
        self->COMPETITION_VALUE = (self->COMPETITION_VALUE >> 2);
}


- (int32_t) getCompetitionValue {
        return self->COMPETITION_VALUE;
}

@end

