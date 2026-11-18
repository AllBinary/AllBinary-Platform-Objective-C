// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/GameFeatureItemStateListener.h"
#include "javax/microedition/lcdui/ChoiceGroup.h"
#include "javax/microedition/lcdui/Item.h"
#include "org/allbinary/game/configuration/GameConfigurationGauge.h"
#include "org/allbinary/game/configuration/GameConfigurationUtil.h"
#include "org/allbinary/game/configuration/GameOptionsForm.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/GameFeature.h"
#include "org/allbinary/game/configuration/feature/GameFeatureUtil.h"


static BasicArrayList* GameFeatureItemStateListener_toggleList;

void GameFeatureItemStateListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameFeatureItemStateListener_toggleList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

@implementation GameFeatureItemStateListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


- (instancetype) init:(GameOptionsForm*)gameOptionsForm {
    self = [super init];
    [self initFields];
        self->gameOptionsForm = gameOptionsForm;
        GameFeatureFactory* gameFeatureFactory = [GameFeatureFactory getInstance];
        [GameFeatureItemStateListener add:gameFeatureFactory->ARTIFICIAL_INTELLEGENCE_PROCESSOR];
        [GameFeatureItemStateListener add:gameFeatureFactory->COLLIDABLE_INTERFACE_LAYER_PROCESSOR];
        [GameFeatureItemStateListener add:gameFeatureFactory->DAMAGE_FLOATERS];
        [GameFeatureItemStateListener add:gameFeatureFactory->DROPPED_ITEMS];
        [GameFeatureItemStateListener add:gameFeatureFactory->GAME_INPUT_LAYER_PROCESSOR];
        [GameFeatureItemStateListener add:gameFeatureFactory->HEALTH_BARS];
        [GameFeatureItemStateListener add:gameFeatureFactory->SOUND];
        [GameFeatureItemStateListener add:gameFeatureFactory->TICKABLE_LAYER_PROCESSOR];
    return self;
}


+ (void) add:(GameFeature*)gameFeature {
        if (![(GameFeatureItemStateListener_staticInit(), GameFeatureItemStateListener_toggleList) contains:gameFeature]) {
            [(GameFeatureItemStateListener_staticInit(), GameFeatureItemStateListener_toggleList) add:gameFeature];
        }
}


- (void) itemStateChanged:(Item*)item {
        JAVA_TRY {
            const char* itemLabel = [item getLabel];
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->ITEM_LABEL] append:itemLabel] toString] :self :"itemStateChanged"];
            if (java_objc_instanceof(item, [GameConfigurationGauge class])) {
                [[GameConfigurationUtil getInstance] change:self->gameOptionsForm :((GameConfigurationGauge*) item)];
            } else if (java_objc_instanceof(item, [ChoiceGroup class])) {
                GameFeatureUtil* gameFeatureUtil = [GameFeatureUtil getInstance];
                if ([gameFeatureUtil isExclusive:itemLabel]) {
                    [gameFeatureUtil updateExclusiveForChoiceGroup:((ChoiceGroup*) item)];
                } else {
                    [gameFeatureUtil updateMultiple:((ChoiceGroup*) item)];
                }
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"itemStateChanged" :e];
        } JAVA_END_TRY;
}

@end

