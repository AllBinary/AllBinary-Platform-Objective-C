// Generated Code Do Not Modify
#include "org/allbinary/game/input/PCKeyFactory.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/string/CommonPhoneStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/game/input/ABKeyEventWrapper.h"
#include "org/allbinary/game/input/PCGameKey.h"
#include "org/allbinary/game/input/Input.h"


static PCKeyFactory* PCKeyFactory_SINGLETON;

void PCKeyFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PCKeyFactory_SINGLETON = [((PCKeyFactory*) [PCKeyFactory alloc]) init];
}

@implementation PCKeyFactory

- (void) initFields {
    self->keyEventWrapper = [ABKeyEventWrapper getInstance];
    self->UNKNOWN = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_UNDEFINED :"UNKNOWN"];
    self->ENTER = [((PCGameKey*) [PCGameKey alloc]) init:5 :"Enter"];
    self->_A_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_A :"A"];
    self->_B_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_B :"B"];
    self->_C_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_C :"C"];
    self->_D_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_D :"D"];
    self->_E_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_E :"E"];
    self->_F_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_F :"F"];
    self->_G_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_G :"G"];
    self->_H_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_H :"H"];
    self->_I_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_I :"I"];
    self->_J_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_J :"J"];
    self->_K_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_K :"K"];
    self->_L_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_L :"L"];
    self->_M_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_M :"M"];
    self->_N_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_N :"N"];
    self->_O_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_O :"O"];
    self->_P_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_P :"P"];
    self->_Q_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_Q :"Q"];
    self->_R_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_R :"R"];
    self->_S_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_S :"S"];
    self->_T_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_T :"T"];
    self->_U_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_U :"U"];
    self->_V_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_V :"V"];
    self->_W_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_W :"W"];
    self->_X_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_X :"X"];
    self->_Y_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_Y :"Y"];
    self->_Z_ = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_Z :"Z"];
    self->a = [((PCGameKey*) [PCGameKey alloc]) init:97 :"a"];
    self->b = [((PCGameKey*) [PCGameKey alloc]) init:98 :"b"];
    self->c = [((PCGameKey*) [PCGameKey alloc]) init:99 :"c"];
    self->d = [((PCGameKey*) [PCGameKey alloc]) init:100 :"d"];
    self->e = [((PCGameKey*) [PCGameKey alloc]) init:101 :"e"];
    self->f = [((PCGameKey*) [PCGameKey alloc]) init:102 :"f"];
    self->g = [((PCGameKey*) [PCGameKey alloc]) init:103 :"g"];
    self->h = [((PCGameKey*) [PCGameKey alloc]) init:104 :"h"];
    self->i = [((PCGameKey*) [PCGameKey alloc]) init:105 :"i"];
    self->j = [((PCGameKey*) [PCGameKey alloc]) init:106 :"j"];
    self->k = [((PCGameKey*) [PCGameKey alloc]) init:107 :"k"];
    self->l = [((PCGameKey*) [PCGameKey alloc]) init:108 :"l"];
    self->m = [((PCGameKey*) [PCGameKey alloc]) init:109 :"m"];
    self->n = [((PCGameKey*) [PCGameKey alloc]) init:110 :"n"];
    self->o = [((PCGameKey*) [PCGameKey alloc]) init:111 :"o"];
    self->p = [((PCGameKey*) [PCGameKey alloc]) init:112 :"p"];
    self->q = [((PCGameKey*) [PCGameKey alloc]) init:113 :"q"];
    self->r = [((PCGameKey*) [PCGameKey alloc]) init:114 :"r"];
    self->s = [((PCGameKey*) [PCGameKey alloc]) init:115 :"s"];
    self->t = [((PCGameKey*) [PCGameKey alloc]) init:116 :"t"];
    self->u = [((PCGameKey*) [PCGameKey alloc]) init:117 :"u"];
    self->v = [((PCGameKey*) [PCGameKey alloc]) init:118 :"v"];
    self->w = [((PCGameKey*) [PCGameKey alloc]) init:119 :"w"];
    self->x = [((PCGameKey*) [PCGameKey alloc]) init:120 :[PositionStrings getInstance]->X];
    self->y = [((PCGameKey*) [PCGameKey alloc]) init:121 :[PositionStrings getInstance]->Y];
    self->z = [((PCGameKey*) [PCGameKey alloc]) init:122 :"z"];
    self->ZERO = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_0 :[CommonPhoneStrings getInstance]->ZERO];
    self->ONE = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_1 :[CommonPhoneStrings getInstance]->ONE];
    self->TWO = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_2 :[CommonPhoneStrings getInstance]->TWO];
    self->THREE = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_3 :[CommonPhoneStrings getInstance]->THREE];
    self->FOUR = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_4 :[CommonPhoneStrings getInstance]->FOUR];
    self->FIVE = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_5 :[CommonPhoneStrings getInstance]->FIVE];
    self->SIX = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_6 :[CommonPhoneStrings getInstance]->SIX];
    self->SEVEN = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_7 :[CommonPhoneStrings getInstance]->SEVEN];
    self->EIGHT = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_8 :[CommonPhoneStrings getInstance]->EIGHT];
    self->NINE = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_9 :[CommonPhoneStrings getInstance]->NINE];
    self->DPAD_UP = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_UP :[CommonPhoneStrings getInstance]->UP];
    self->DPAD_DOWN = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_DOWN :[CommonPhoneStrings getInstance]->DOWN];
    self->DPAD_LEFT = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_LEFT :[CommonPhoneStrings getInstance]->LEFT];
    self->DPAD_RIGHT = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_RIGHT :[CommonPhoneStrings getInstance]->RIGHT];
    self->DPAD_UP2 = self->DPAD_UP;
    self->DPAD_DOWN2 = self->DPAD_DOWN;
    self->DPAD_LEFT2 = self->DPAD_LEFT;
    self->DPAD_RIGHT2 = self->DPAD_RIGHT;
    self->COMMA = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_COMMA :"COMMA"];
    self->SPACE = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_SPACE :"SPACE"];
    self->DEL = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_DELETE :"DEL"];
    self->STAR = [((PCGameKey*) [PCGameKey alloc]) init:42 :[CommonPhoneStrings getInstance]->STAR];
    self->QUESTION = [((PCGameKey*) [PCGameKey alloc]) init:47 :"?"];
    self->PERIOD = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_PERIOD :[CommonSeps getInstance]->PERIOD];
    self->ESCAPE = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_ESCAPE :"Esc"];
    self->BACK_SPACE = [((PCGameKey*) [PCGameKey alloc]) init:self->keyEventWrapper->VK_BACK_SPACE :"Backspace"];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PCKeyFactory*) getInstance {
        return (PCKeyFactory_staticInit(), PCKeyFactory_SINGLETON);
}


- (bool) isSubmission:(Input*)input {
        if (input == self->ENTER) {
            return true;
        }
        return false;
}


- (bool) isDelete:(Input*)input {
        if (input == self->DEL) {
            return true;
        }
        return false;
}


- (bool) isBackSpace:(Input*)input {
        if (input == self->BACK_SPACE) {
            return true;
        }
        return false;
}


- (bool) isUp:(Input*)input {
        if (input == self->DPAD_UP || input == self->DPAD_UP2) {
            return true;
        }
        return false;
}


- (bool) isDown:(Input*)input {
        if (input == self->DPAD_DOWN || input == self->DPAD_DOWN2) {
            return true;
        }
        return false;
}


- (bool) isLeft:(Input*)input {
        if (input == self->DPAD_LEFT || input == self->DPAD_LEFT2) {
            return true;
        }
        return false;
}


- (bool) isRight:(Input*)input {
        if (input == self->DPAD_RIGHT || input == self->DPAD_RIGHT2) {
            return true;
        }
        return false;
}


- (bool) isEnter:(Input*)input {
        if (input == self->ENTER) {
            return true;
        }
        return false;
}

@end

