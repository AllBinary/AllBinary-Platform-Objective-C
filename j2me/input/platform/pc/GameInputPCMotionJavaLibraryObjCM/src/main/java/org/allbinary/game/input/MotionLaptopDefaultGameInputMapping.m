// Generated Code Do Not Modify
#include "org/allbinary/game/input/MotionLaptopDefaultGameInputMapping.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/game/input/PCKeyFactory.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#if __has_include("org/allbinary/game/configuration/persistance/GamePersistanceStrings.h")
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#endif



void MotionLaptopDefaultGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionLaptopDefaultGameInputMapping


- (instancetype) init {
        self = [super init:[GamePersistanceStrings getInstance]->DEFAULT_INPUT_MAPPING_RECORD_ID];
        PCKeyFactory* pcKeyFactory = [PCKeyFactory getInstance];
        InputToGameKeyMapping* inputToGameKeyMapping = [self getInputMapping];
        GameKeyFactory* gameKeyFactory = [GameKeyFactory getInstance];
        TouchMotionGestureFactory* touchMotionGestureFactory = [TouchMotionGestureFactory getInstance];
        BasicTouchInputFactory* basicTouchInputFactory = [BasicTouchInputFactory getInstance];
        [inputToGameKeyMapping add:gameKeyFactory->FIRE :pcKeyFactory->ENTER];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :pcKeyFactory->FOUR];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :pcKeyFactory->_P_];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM1 :pcKeyFactory->p];
        [inputToGameKeyMapping add:gameKeyFactory->UP :pcKeyFactory->DPAD_UP];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :pcKeyFactory->DPAD_DOWN];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :pcKeyFactory->DPAD_LEFT];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :pcKeyFactory->DPAD_RIGHT];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM7 :pcKeyFactory->_Y_];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM9 :pcKeyFactory->_I_];
        [inputToGameKeyMapping add:gameKeyFactory->UP :pcKeyFactory->_U_];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :pcKeyFactory->_H_];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :pcKeyFactory->_J_];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :pcKeyFactory->_N_];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM5 :pcKeyFactory->_M_];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM7 :pcKeyFactory->y];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM9 :pcKeyFactory->i];
        [inputToGameKeyMapping add:gameKeyFactory->UP :pcKeyFactory->u];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :pcKeyFactory->h];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :pcKeyFactory->j];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :pcKeyFactory->n];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM5 :pcKeyFactory->m];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM7 :pcKeyFactory->_Q_];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM9 :pcKeyFactory->_E_];
        [inputToGameKeyMapping add:gameKeyFactory->UP :pcKeyFactory->_W_];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :pcKeyFactory->_A_];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :pcKeyFactory->_D_];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :pcKeyFactory->_S_];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM5 :pcKeyFactory->_X_];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM7 :pcKeyFactory->q];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM9 :pcKeyFactory->e];
        [inputToGameKeyMapping add:gameKeyFactory->UP :pcKeyFactory->w];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :pcKeyFactory->a];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :pcKeyFactory->d];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :pcKeyFactory->s];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM5 :pcKeyFactory->x];
        [inputToGameKeyMapping add:gameKeyFactory->UP :touchMotionGestureFactory->UP];
        [inputToGameKeyMapping add:gameKeyFactory->DOWN :touchMotionGestureFactory->DOWN];
        [inputToGameKeyMapping add:gameKeyFactory->LEFT :touchMotionGestureFactory->LEFT];
        [inputToGameKeyMapping add:gameKeyFactory->RIGHT :touchMotionGestureFactory->RIGHT];
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
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM3 :pcKeyFactory->THREE];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM0 :pcKeyFactory->ZERO];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM0 :pcKeyFactory->ONE];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_NUM0 :pcKeyFactory->SPACE];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_POUND :pcKeyFactory->DEL];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_POUND :pcKeyFactory->TWO];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_STAR :pcKeyFactory->ESCAPE];
        [inputToGameKeyMapping add:gameKeyFactory->KEY_STAR :pcKeyFactory->STAR];
        [inputToGameKeyMapping add:gameKeyFactory->LEVEL_DOWN :pcKeyFactory->COMMA];
        [inputToGameKeyMapping add:gameKeyFactory->LEVEL_UP :pcKeyFactory->PERIOD];
    return self;
}

@end

