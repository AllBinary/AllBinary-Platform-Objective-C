// Generated Code Do Not Modify
#include "org/allbinary/game/input/PCKeyFactory.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/string/CommonPhoneStrings.h"
#include "org/allbinary/string/CommonSeps.h"
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
    self->UNKNOWN = [((PCGameKey*) [PCGameKey alloc]) init:254 :"UNKNOWN"];
    self->ENTER = [((PCGameKey*) [PCGameKey alloc]) init:13 :"Enter"];
    self->_A_ = [((PCGameKey*) [PCGameKey alloc]) init:65 :"A"];
    self->_B_ = [((PCGameKey*) [PCGameKey alloc]) init:66 :"B"];
    self->_C_ = [((PCGameKey*) [PCGameKey alloc]) init:67 :"C"];
    self->_D_ = [((PCGameKey*) [PCGameKey alloc]) init:68 :"D"];
    self->_E_ = [((PCGameKey*) [PCGameKey alloc]) init:69 :"E"];
    self->_F_ = [((PCGameKey*) [PCGameKey alloc]) init:70 :"F"];
    self->_G_ = [((PCGameKey*) [PCGameKey alloc]) init:71 :"G"];
    self->_H_ = [((PCGameKey*) [PCGameKey alloc]) init:72 :"H"];
    self->_I_ = [((PCGameKey*) [PCGameKey alloc]) init:73 :"I"];
    self->_J_ = [((PCGameKey*) [PCGameKey alloc]) init:74 :"J"];
    self->_K_ = [((PCGameKey*) [PCGameKey alloc]) init:75 :"K"];
    self->_L_ = [((PCGameKey*) [PCGameKey alloc]) init:76 :"L"];
    self->_M_ = [((PCGameKey*) [PCGameKey alloc]) init:77 :"M"];
    self->_N_ = [((PCGameKey*) [PCGameKey alloc]) init:78 :"N"];
    self->_O_ = [((PCGameKey*) [PCGameKey alloc]) init:79 :"O"];
    self->_P_ = [((PCGameKey*) [PCGameKey alloc]) init:80 :"P"];
    self->_Q_ = [((PCGameKey*) [PCGameKey alloc]) init:81 :"Q"];
    self->_R_ = [((PCGameKey*) [PCGameKey alloc]) init:82 :"R"];
    self->_S_ = [((PCGameKey*) [PCGameKey alloc]) init:83 :"S"];
    self->_T_ = [((PCGameKey*) [PCGameKey alloc]) init:84 :"T"];
    self->_U_ = [((PCGameKey*) [PCGameKey alloc]) init:85 :"U"];
    self->_V_ = [((PCGameKey*) [PCGameKey alloc]) init:86 :"V"];
    self->_W_ = [((PCGameKey*) [PCGameKey alloc]) init:87 :"W"];
    self->_X_ = [((PCGameKey*) [PCGameKey alloc]) init:88 :"X"];
    self->_Y_ = [((PCGameKey*) [PCGameKey alloc]) init:89 :"Y"];
    self->_Z_ = [((PCGameKey*) [PCGameKey alloc]) init:90 :"Z"];
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
    self->ZERO = [((PCGameKey*) [PCGameKey alloc]) init:48 :[CommonPhoneStrings getInstance]->ZERO];
    self->ONE = [((PCGameKey*) [PCGameKey alloc]) init:49 :[CommonPhoneStrings getInstance]->ONE];
    self->TWO = [((PCGameKey*) [PCGameKey alloc]) init:50 :[CommonPhoneStrings getInstance]->TWO];
    self->THREE = [((PCGameKey*) [PCGameKey alloc]) init:51 :[CommonPhoneStrings getInstance]->THREE];
    self->FOUR = [((PCGameKey*) [PCGameKey alloc]) init:52 :[CommonPhoneStrings getInstance]->FOUR];
    self->FIVE = [((PCGameKey*) [PCGameKey alloc]) init:53 :[CommonPhoneStrings getInstance]->FIVE];
    self->SIX = [((PCGameKey*) [PCGameKey alloc]) init:54 :[CommonPhoneStrings getInstance]->SIX];
    self->SEVEN = [((PCGameKey*) [PCGameKey alloc]) init:55 :[CommonPhoneStrings getInstance]->SEVEN];
    self->EIGHT = [((PCGameKey*) [PCGameKey alloc]) init:56 :[CommonPhoneStrings getInstance]->EIGHT];
    self->NINE = [((PCGameKey*) [PCGameKey alloc]) init:57 :[CommonPhoneStrings getInstance]->NINE];
    self->DPAD_UP = [((PCGameKey*) [PCGameKey alloc]) init:38 :[CommonPhoneStrings getInstance]->UP];
    self->DPAD_DOWN = [((PCGameKey*) [PCGameKey alloc]) init:40 :[CommonPhoneStrings getInstance]->DOWN];
    self->DPAD_LEFT = [((PCGameKey*) [PCGameKey alloc]) init:37 :[CommonPhoneStrings getInstance]->LEFT];
    self->DPAD_RIGHT = [((PCGameKey*) [PCGameKey alloc]) init:39 :[CommonPhoneStrings getInstance]->RIGHT];
    self->DPAD_UP2 = self->DPAD_UP;
    self->DPAD_DOWN2 = self->DPAD_DOWN;
    self->DPAD_LEFT2 = self->DPAD_LEFT;
    self->DPAD_RIGHT2 = self->DPAD_RIGHT;
    self->COMMA = [((PCGameKey*) [PCGameKey alloc]) init:44 :"COMMA"];
    self->SPACE = [((PCGameKey*) [PCGameKey alloc]) init:32 :"SPACE"];
    self->DEL = [((PCGameKey*) [PCGameKey alloc]) init:46 :"DEL"];
    self->STAR = [((PCGameKey*) [PCGameKey alloc]) init:42 :[CommonPhoneStrings getInstance]->STAR];
    self->QUESTION = [((PCGameKey*) [PCGameKey alloc]) init:47 :"?"];
    self->PERIOD = [((PCGameKey*) [PCGameKey alloc]) init:46 :[CommonSeps getInstance]->PERIOD];
    self->ESCAPE = [((PCGameKey*) [PCGameKey alloc]) init:27 :"Esc"];
    self->BACK_SPACE = [((PCGameKey*) [PCGameKey alloc]) init:8 :"Backspace"];
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

