// Generated Code Do Not Modify
#include "org/allbinary/game/input/MotionJ2MEDefaultGameInputMapping.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#if __has_include("org/allbinary/game/configuration/persistance/GamePersistanceStrings.h")
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif



void MotionJ2MEDefaultGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionJ2MEDefaultGameInputMapping


- (instancetype) init {
        self = [super init:[GamePersistanceStrings getInstance]->DEFAULT_INPUT_MAPPING_RECORD_ID];
        InputToGameKeyMapping* inputToGameKeyMapping = [self getInputMapping];
        GameKeyFactory* gameKeyFactory = [GameKeyFactory getInstance];
        [inputToGameKeyMapping add:gameKeyFactory->UP :gameKeyFactory->KEY_NUM2];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :gameKeyFactory->KEY_NUM4];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :gameKeyFactory->KEY_NUM6];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :gameKeyFactory->KEY_NUM8];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :gameKeyFactory->GAME_A];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM3 :gameKeyFactory->GAME_B];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM7 :gameKeyFactory->GAME_C];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM9 :gameKeyFactory->GAME_D];
        [inputToGameKeyMapping add:gameKeyFactory->LEVEL_DOWN :gameKeyFactory->LEVEL_DOWN];
        [inputToGameKeyMapping add:gameKeyFactory->LEVEL_UP :gameKeyFactory->LEVEL_UP];
        [inputToGameKeyMapping add:gameKeyFactory->UP :gameKeyFactory->UP];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :gameKeyFactory->DOWN];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :gameKeyFactory->LEFT];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :gameKeyFactory->RIGHT];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_POUND :gameKeyFactory->KEY_POUND];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_STAR :gameKeyFactory->KEY_STAR];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :gameKeyFactory->KEY_NUM1];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM3 :gameKeyFactory->KEY_NUM3];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM5 :gameKeyFactory->KEY_NUM5];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM7 :gameKeyFactory->KEY_NUM7];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM9 :gameKeyFactory->KEY_NUM9];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM0 :gameKeyFactory->KEY_NUM0];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :gameKeyFactory->FIRE];
        [inputToGameKeyMapping add:gameKeyFactory->UP :[TouchMotionGestureFactory getInstance]->UP];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :[TouchMotionGestureFactory getInstance]->DOWN];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :[TouchMotionGestureFactory getInstance]->LEFT];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :[TouchMotionGestureFactory getInstance]->RIGHT];
        BasicTouchInputFactory* basicTouchInputFactory = [BasicTouchInputFactory getInstance];
        [inputToGameKeyMapping add:gameKeyFactory->UP :basicTouchInputFactory->UP];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :basicTouchInputFactory->LEFT];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :basicTouchInputFactory->RIGHT];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :basicTouchInputFactory->DOWN];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM0 :basicTouchInputFactory->SPECIAL_BUTTON_FIVE];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM7 :basicTouchInputFactory->SPECIAL_BUTTON_FOUR];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM9 :basicTouchInputFactory->SPECIAL_BUTTON_THREE];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :basicTouchInputFactory->SPECIAL_BUTTON_TWO];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM3 :basicTouchInputFactory->SPECIAL_BUTTON_ONE];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM2 :basicTouchInputFactory->SPECIAL_BUTTON_SIX];
    return self;
}

@end

