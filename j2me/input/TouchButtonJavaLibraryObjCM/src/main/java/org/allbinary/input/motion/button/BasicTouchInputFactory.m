// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"


static id BasicTouchInputFactory_instance;

void BasicTouchInputFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicTouchInputFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation BasicTouchInputFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    
    
    
    
    
    
    
    
    
    
    
    
    self->initialized = false;
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


+ (BasicTouchInputFactory*) getInstance {
        if ((BasicTouchInputFactory_staticInit(), BasicTouchInputFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            BasicTouchInputFactory_instance = [((BasicTouchInputFactory*) [BasicTouchInputFactory alloc]) init];
        }
        return ((BasicTouchInputFactory*) (BasicTouchInputFactory_staticInit(), BasicTouchInputFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        int32_t MAX = [InputFactory getInstance]->MAX;
        self->SPECIAL_BUTTON_SEVEN_TESTING_ONLY = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 41 :"Button 7 - Testing Only May Cross Over Key Values"];
        self->SPECIAL_BUTTON_EIGHT_TESTING_ONLY = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 42 :"Button 8 - Testing Only May Cross Over Key Values"];
        self->SPECIAL_BUTTON_SIX = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 30 :"Button 6"];
        self->SPECIAL_BUTTON_FIVE = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 31 :"Button 5"];
        self->SPECIAL_BUTTON_FOUR = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 32 :"Button 4"];
        self->SPECIAL_BUTTON_THREE = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 33 :"Button 3"];
        self->SPECIAL_BUTTON_TWO = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 34 :"Button 2"];
        self->SPECIAL_BUTTON_ONE = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 35 :"Button 1"];
        self->UP = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 36 :"Up Button"];
        self->LEFT = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 37 :"Left Button"];
        self->RIGHT = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 38 :"Right Button"];
        self->DOWN = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 39 :"Down Button"];
        self->NONE = [((TouchButtonInput*) [TouchButtonInput alloc]) init:MAX - 40 :"No Button"];
    return self;
}


// synchronized
- (void) init_:(InputToGameKeyMapping*)inputToGameKeyMapping {
        if (!self->initialized) {
            self->initialized = true;
            [self->list add:self->UP];
            [self->list add:self->LEFT];
            [self->list add:self->RIGHT];
            [self->list add:self->DOWN];
            [self->list add:self->SPECIAL_BUTTON_TWO];
            [self->list add:self->SPECIAL_BUTTON_FOUR];
            [self->list add:self->SPECIAL_BUTTON_THREE];
            [self->list add:self->SPECIAL_BUTTON_ONE];
            [self->list add:self->SPECIAL_BUTTON_FIVE];
            [self->list add:self->SPECIAL_BUTTON_SIX];
            [self->list add:self->SPECIAL_BUTTON_SIX];
            [self->list add:self->SPECIAL_BUTTON_SEVEN_TESTING_ONLY];
            [self->list add:self->SPECIAL_BUTTON_EIGHT_TESTING_ONLY];
            [self updateAllFromList:self->list :inputToGameKeyMapping];
        }
}


- (void) updateAll:(InputToGameKeyMapping*)inputToGameKeyMapping {
        [self updateAllFromList:self->list :inputToGameKeyMapping];
}


- (void) updateAllFromList:(BasicArrayList*)list :(InputToGameKeyMapping*)inputToGameKeyMapping {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] appendint:[list size]] toString] :self :"updateAll"];
        TouchButtonInput* touchButtonInput = nullptr;
        for (int32_t index = [list size] - 1; index >= 0; index--) {
            touchButtonInput = ((TouchButtonInput*) list->objectArray[index]);
            [touchButtonInput update:inputToGameKeyMapping];
        }
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

