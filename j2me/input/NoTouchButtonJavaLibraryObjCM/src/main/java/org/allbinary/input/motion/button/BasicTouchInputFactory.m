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
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif


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
    self->SPECIAL_BUTTON_SIX = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 30 :"Button 6"]);
    self->SPECIAL_BUTTON_FIVE = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 31 :"Button 5"]);
    self->SPECIAL_BUTTON_FOUR = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 32 :"Button 4"]);
    self->SPECIAL_BUTTON_THREE = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 33 :"Button 3"]);
    self->SPECIAL_BUTTON_TWO = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 34 :"Button 2"]);
    self->SPECIAL_BUTTON_ONE = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 35 :"Button 1"]);
    self->UP = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 36 :"Up Button"]);
    self->LEFT = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 37 :"Left Button"]);
    self->RIGHT = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 38 :"Right Button"]);
    self->DOWN = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 39 :"Down Button"]);
    self->NONE = ((TouchButtonInput*) [((TouchButtonInput*) [TouchButtonInput alloc]) init:[InputFactory getInstance]->MAX - 40 :"No Button"]);
    self->initialized = false;
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicTouchInputFactory*) getInstance {
        if ((BasicTouchInputFactory_staticInit(), BasicTouchInputFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            BasicTouchInputFactory_instance = ((BasicTouchInputFactory*) [((BasicTouchInputFactory*) [BasicTouchInputFactory alloc]) init]);
        }
        return ((BasicTouchInputFactory*) (BasicTouchInputFactory_staticInit(), BasicTouchInputFactory_instance));
}


// synchronized
- (void) initMethod:(InputToGameKeyMapping*)inputToGameKeyMapping {
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
            [self updateAllList:self->list :inputToGameKeyMapping];
        }
}


- (void) updateAll:(InputToGameKeyMapping*)inputToGameKeyMapping {
        [self updateAllList:[self getList] :inputToGameKeyMapping];
}


- (void) updateAllList:(BasicArrayList*)list :(InputToGameKeyMapping*)inputToGameKeyMapping {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[CommonLabels getInstance]->START] appendint:[list size]] toString] :self :"updateAll"];
        for (int32_t index = [list size] - 1; index >= 0; index--) {
            TouchButtonInput* touchButtonInput = ((TouchButtonInput*) [list get:index]);
            [touchButtonInput update:inputToGameKeyMapping];
        }
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

