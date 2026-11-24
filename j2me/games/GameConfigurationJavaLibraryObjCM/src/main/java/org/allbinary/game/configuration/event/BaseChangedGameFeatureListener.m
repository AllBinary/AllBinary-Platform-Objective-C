// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/event/BaseChangedGameFeatureListener.h"
#include "org/allbinary/game/configuration/feature/Feature.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureUtil.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/configuration/event/GameFeatureListenerInterface.h"
#include "org/allbinary/game/configuration/event/GameFeatureEvent.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif



void BaseChangedGameFeatureListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseChangedGameFeatureListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->gameFeatureUtil = [GameFeatureUtil getInstance];
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->changed = true;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[CommonStrings getInstance]->NOT_IMPLEMENTED :self];
}


- (void) onGameFeatureChange:(GameFeatureEvent*)gameFeatureEvent {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->gameFeatureUtil->GAME_FEATURE_CHANGED] append:[gameFeatureEvent getWhatChanged]] toString] :self :self->gameFeatureUtil->ON_GAME_FEATURE_CHANGE];
        [self->list add:[gameFeatureEvent getGameOption]];
        [self setChanged:true];
}


- (void) add:(Feature*)gameFeature {
        [self->list add:gameFeature];
}


- (void) remove:(Feature*)gameFeature {
        [self->list remove:gameFeature];
}


- (void) setChanged:(bool)initialized {
        self->changed = initialized;
        if (![self isChanged]) {
            [self->list clear];
        }
}


- (bool) isChangedFeature:(Feature*)gameFeature {
        bool isChanged = [self->list contains:gameFeature];
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"GameFeature: "];
        [stringBuffer append:[[StringUtil getInstance] toString:gameFeature]];
        [stringBuffer append:" isFeature: "];
        [stringBuffer appendboolean:[[Features getInstance] isFeature:gameFeature]];
        [stringBuffer append:" isChanged: "];
        [stringBuffer appendboolean:isChanged];
        [self->logUtil putF:[stringBuffer toString] :self :"isChanged"];
        return isChanged;
}


- (bool) isChanged {
        return self->changed;
}

@end

