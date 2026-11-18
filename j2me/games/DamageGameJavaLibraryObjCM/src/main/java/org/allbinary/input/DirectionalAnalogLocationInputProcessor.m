// Generated Code Do Not Modify
#include "org/allbinary/input/DirectionalAnalogLocationInputProcessor.h"
#include "org/allbinary/game/input/GameInputProcessor.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/analog/AnalogLocationInput.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/graphics/CustomGPoint.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"



void DirectionalAnalogLocationInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DirectionalAnalogLocationInputProcessor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    self->gameKeyFactory = [GameKeyFactory getInstance];
    self->leftGameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
    self->rightGameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
    self->upGameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
    self->downGameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
    self->leftTriggerGameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
    self->rightTriggerGameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
}


- (instancetype) init:(GameInputProcessor**)inputProcessorArray {
    self = [super init];
    [self initFields];
        self->inputProcessorArray = inputProcessorArray;
        JAVA_TRY {
            self->leftGameKeyEvent = [[GameKeyEventFactory getInstance] getInstanceForInput:self :self->gameKeyFactory->LEFT];
            self->rightGameKeyEvent = [[GameKeyEventFactory getInstance] getInstanceForInput:self :self->gameKeyFactory->RIGHT];
            self->upGameKeyEvent = [[GameKeyEventFactory getInstance] getInstanceForInput:self :self->gameKeyFactory->UP];
            self->downGameKeyEvent = [[GameKeyEventFactory getInstance] getInstanceForInput:self :self->gameKeyFactory->DOWN];
            self->leftTriggerGameKeyEvent = [[GameKeyEventFactory getInstance] getInstanceForInput:self :self->gameKeyFactory->KEY_NUM0];
            self->rightTriggerGameKeyEvent = [[GameKeyEventFactory getInstance] getInstanceForInput:self :self->gameKeyFactory->KEY_NUM5];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
    return self;
}


- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(AnalogLocationInput*)analogLocationInput {
        JAVA_TRY {
            CustomGPoint* customGPoint = nullptr;
            customGPoint = [analogLocationInput getCustomGPoint];
            int32_t x = [customGPoint getX];
            int32_t y = [customGPoint getY];
            int32_t leftTrigger = [analogLocationInput getLeftTrigger];
            int32_t rightTrigger = [analogLocationInput getRightTrigger];
            if (x < 0) {
                [self->inputProcessorArray[[self->leftGameKeyEvent getKey]] processAnalog:allbinaryLayerManager :self->leftGameKeyEvent :x];
            } else if (x > 0) {
                [self->inputProcessorArray[[self->rightGameKeyEvent getKey]] processAnalog:allbinaryLayerManager :self->rightGameKeyEvent :x];
            }
            if (y < 0) {
                [self->inputProcessorArray[[self->downGameKeyEvent getKey]] processAnalog:allbinaryLayerManager :self->downGameKeyEvent :y];
            } else if (y > 0) {
                [self->inputProcessorArray[[self->upGameKeyEvent getKey]] processAnalog:allbinaryLayerManager :self->upGameKeyEvent :y];
            }
            if (leftTrigger > 0) {
                [self->inputProcessorArray[[self->leftTriggerGameKeyEvent getKey]] processAnalog:allbinaryLayerManager :self->leftTriggerGameKeyEvent :leftTrigger];
            }
            if (rightTrigger > 0) {
                [self->inputProcessorArray[[self->rightTriggerGameKeyEvent getKey]] processAnalog:allbinaryLayerManager :self->rightTriggerGameKeyEvent :rightTrigger];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:"Unable to process analog input" :self :commonStrings->PROCESS :e];
        } JAVA_END_TRY;
}


- (int32_t) getSourceId {
        return 0;
}

@end

