// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/score/ScoreableAddOnlyForHud.h"
#include "org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget.h"



void ScoreableAddOnlyForHud_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScoreableAddOnlyForHud

- (void) initFields {
    
}


- (instancetype) init:(ScoreHudWidget*)scoreVectorGraphic {
        self = [super init:0];
        [self initFields];
        self->scoreHudWidget = scoreVectorGraphic;
        [[self getScoreHudWidget] set:0];
    return self;
}


- (void) removePoints:(int32_t)points {
}


- (void) addPoints:(int32_t)points {
        [super addPoints:points];
        [[self getScoreHudWidget] add:points];
}


- (ScoreHudWidget*) getScoreHudWidget {
        return self->scoreHudWidget;
}

@end

