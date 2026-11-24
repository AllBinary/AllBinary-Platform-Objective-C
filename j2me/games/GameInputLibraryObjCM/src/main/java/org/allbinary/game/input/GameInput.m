// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/InputFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#endif



void GameInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameInput

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
    
}


- (instancetype) init:(BasicArrayList*)gameKeyEventList :(BasicArrayList*)removalGameKeyEventList {
    self = [super init];
    [self initFields];
        self->gameKeyEventList = gameKeyEventList;
        self->removalGameKeyEventList = removalGameKeyEventList;
        self->isRemoveDuplicateKeyPresses = [[Features getInstance] isFeature:[InputFeatureFactory getInstance]->REMOVE_DUPLICATE_KEY_PRESSES];
    return self;
}


// synchronized
- (void) add:(GameKeyEvent*)gameKeyEvent {
        if (self->isRemoveDuplicateKeyPresses && [self->gameKeyEventList contains:gameKeyEvent]) {
            return;
        }
        if (gameKeyEvent != nil) {
            [self->gameKeyEventList add:gameKeyEvent];
        } else {
            [self->logUtil putF:"Danger Passed Null GameKeyEvent" :self :self->commonStrings->ADD];
        }
}


// synchronized
- (void) addForRemoval:(GameKeyEvent*)gameKeyEvent {
        [self->removalGameKeyEventList add:gameKeyEvent];
}


// synchronized
- (bool) isForRemoval:(GameKeyEvent*)gameKeyEvent {
        return [self->removalGameKeyEventList contains:gameKeyEvent];
}


// synchronized
- (void) clear {
        [self->gameKeyEventList clear];
}


// synchronized
- (void) removeNonAIInputGameKeyEvents {
        BasicArrayList* list = self->gameKeyEventList;
        GameKeyEvent* gameKeyEvent = nullptr;
        for (int32_t index = [list size]; --index >= 0; ) {
            gameKeyEvent = ((GameKeyEvent*) list->objectArray[index]);
            if ([gameKeyEvent getSourceId] != 1) {
                [list removeAt:index];
            }
        }
}


// synchronized
- (void) update {
        BasicArrayList* removeList = self->removalGameKeyEventList;
        BasicArrayList* list = self->gameKeyEventList;
        int32_t size = [removeList size];
        for (int32_t index = 0; index < size; index++) {
            id anyType = removeList->objectArray[index];
            for (int32_t index2 = [list size]; --index2 >= 0; ) {
                if (list->objectArray[index2] == anyType) {
                    [list removeAt:index2];
                }
            }
        }
        [removeList clear];
}


- (BasicArrayList*) getRemovalGameKeyEventList {
        return self->removalGameKeyEventList;
}


- (BasicArrayList*) getGameKeyEventList {
        return self->gameKeyEventList;
}

@end

