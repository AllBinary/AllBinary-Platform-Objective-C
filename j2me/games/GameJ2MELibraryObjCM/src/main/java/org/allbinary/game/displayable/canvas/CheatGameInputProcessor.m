// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/CheatGameInputProcessor.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/GameKeyEventUtil.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/layer/special/SpecialGameInputFactory.h"
#include "org/allbinary/game/layer/special/SpecialGameInputInterface.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"


SpecialGameInputInterface* CheatGameInputProcessor_inputProcessor;

void CheatGameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CheatGameInputProcessor_inputProcessor = (SpecialGameInputFactory_staticInit(), SpecialGameInputFactory_NO_SPECIAL_GAME_INPUT);
}

@implementation CheatGameInputProcessor

- (void) initFields {
    self->PROCESS_GAME = "processGame";
    
    self->gameKeyFactory = [GameKeyFactory getInstance];
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
        self = [super init:[((BasicArrayListD*) [BasicArrayListD alloc]) init] :[((BasicArrayListD*) [BasicArrayListD alloc]) init] :-1];
        [self initFields];
        self->gameCanvas = gameCanvas;
    return self;
}


// synchronized
- (void) update {
        JAVA_TRY {
            AllBinaryGameLayerManager* gameLayerManager = [self->gameCanvas getLayerManager];
            BasicArrayList* list = [self getGameKeyEventList];
            int32_t size = [list size];
            for (int32_t index = 0; index < size; index++) {
                id anyType = list->objectArray[index];
                int32_t key = [GameKeyEventUtil getKey:anyType];
                if (key == [self->gameKeyFactory->LEVEL_DOWN getId]) {
                    [(CheatGameInputProcessor_staticInit(), CheatGameInputProcessor_inputProcessor) strafeLeft];
                    break;
                } else if (key == [self->gameKeyFactory->LEVEL_UP getId]) {
                    [(CheatGameInputProcessor_staticInit(), CheatGameInputProcessor_inputProcessor) strafeRight];
                    break;
                }
                if (key == [self->gameKeyFactory->LEFT getId]) {
                    [(CheatGameInputProcessor_staticInit(), CheatGameInputProcessor_inputProcessor) left];
                    break;
                } else if (key == [self->gameKeyFactory->RIGHT getId]) {
                    [(CheatGameInputProcessor_staticInit(), CheatGameInputProcessor_inputProcessor) right];
                    break;
                } else if (key == [self->gameKeyFactory->UP getId]) {
                    [(CheatGameInputProcessor_staticInit(), CheatGameInputProcessor_inputProcessor) up];
                    break;
                } else if (key == [self->gameKeyFactory->DOWN getId]) {
                    [(CheatGameInputProcessor_staticInit(), CheatGameInputProcessor_inputProcessor) down];
                    break;
                } else if (key == [self->gameKeyFactory->KEY_NUM1 getId]) {
                    [(CheatGameInputProcessor_staticInit(), CheatGameInputProcessor_inputProcessor) special1:gameLayerManager :(GameKeyEvent_staticInit(), GameKeyEvent_NONE)];
                    break;
                } else if (key == [self->gameKeyFactory->KEY_NUM3 getId]) {
                    [(CheatGameInputProcessor_staticInit(), CheatGameInputProcessor_inputProcessor) special2:gameLayerManager :(GameKeyEvent_staticInit(), GameKeyEvent_NONE)];
                    break;
                }
            }
            [list clear];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->UPDATE :e];
        } JAVA_END_TRY;
}

@end

