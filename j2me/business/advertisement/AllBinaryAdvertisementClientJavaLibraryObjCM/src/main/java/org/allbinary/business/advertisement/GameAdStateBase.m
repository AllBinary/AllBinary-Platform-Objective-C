// Generated Code Do Not Modify
#include "org/allbinary/business/advertisement/GameAdStateBase.h"
#include "org/allbinary/game/GameType.h"
#include "org/allbinary/game/state/GameState.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/business/advertisement/AdConfiguration.h"
#include "org/allbinary/business/advertisement/Advertisements.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif



void GameAdStateBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameAdStateBase

- (void) initFields {
    
    self->advertisementsP = ((Advertisements*) [((Advertisements*) [Advertisements alloc]) init]);
    self->okayToShowAdsP = false;
}


- (instancetype) init:(AdConfiguration*)adConfiguration {
    self = [super init];
    [self initFields];
        self->adConfigurationP = adConfiguration;
    return self;
}


- (void) initViewArray:(id*)viewArray {
}


- (void) onStart:(id)anyType {
        [self initMethod];
}


- (void) initMethod {
}


- (bool) isShowingAtLocation:(int32_t)location {
        return false;
}


- (bool) isShowingAt {
        return false;
}


- (void) show {
}


- (void) hide {
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) processAdState:(GameState*)gameState :(GameType*)gameType {
}


- (void) processPageAdState {
}


// throws Exception
- (void) playingAdState {
}


// throws Exception
- (void) playingAdStateWH:(int32_t)width :(int32_t)height {
}


// throws Exception
- (void) notPlayingAdState {
}


- (void) setGameIsReady:(bool)gameIsReady {
}


- (bool) isGameIsReady {
        return false;
}


- (Advertisements*) getAdvertisements {
        return self->advertisementsP;
}


- (AdConfiguration*) getAdConfiguration {
        return self->adConfigurationP;
}


- (bool) isOkayToShowPageAd {
        return false;
}


- (void) setOkayToShowAds:(bool)okayToShowAds {
        self->okayToShowAdsP = okayToShowAds;
}


- (bool) isOkayToShowAds {
        return self->okayToShowAdsP;
}


- (bool) isEnabled {
        return false;
}

@end

