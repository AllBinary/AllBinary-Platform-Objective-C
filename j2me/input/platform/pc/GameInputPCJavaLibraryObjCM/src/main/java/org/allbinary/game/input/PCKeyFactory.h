#ifndef ORG_ALLBINARY_GAME_INPUT_PCKEYFACTORY_H
#define ORG_ALLBINARY_GAME_INPUT_PCKEYFACTORY_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PCKeyFactory;
@class PositionStrings;
@class CommonPhoneStrings;
@class CommonSeps;
@class ABKeyEventWrapper;
@class PCGameKey;
@class Input;
#if __has_include("org/allbinary/game/input/ABKeyEventWrapper.h")
#include "org/allbinary/game/input/ABKeyEventWrapper.h"
#endif
#if __has_include("org/allbinary/game/input/PCGameKey.h")
#include "org/allbinary/game/input/PCGameKey.h"
#endif

@interface PCKeyFactory : ABObject {
@public
    ABKeyEventWrapper* keyEventWrapper;
    PCGameKey* UNKNOWN;
    PCGameKey* ENTER;
    PCGameKey* _A_;
    PCGameKey* _B_;
    PCGameKey* _C_;
    PCGameKey* _D_;
    PCGameKey* _E_;
    PCGameKey* _F_;
    PCGameKey* _G_;
    PCGameKey* _H_;
    PCGameKey* _I_;
    PCGameKey* _J_;
    PCGameKey* _K_;
    PCGameKey* _L_;
    PCGameKey* _M_;
    PCGameKey* _N_;
    PCGameKey* _O_;
    PCGameKey* _P_;
    PCGameKey* _Q_;
    PCGameKey* _R_;
    PCGameKey* _S_;
    PCGameKey* _T_;
    PCGameKey* _U_;
    PCGameKey* _V_;
    PCGameKey* _W_;
    PCGameKey* _X_;
    PCGameKey* _Y_;
    PCGameKey* _Z_;
    PCGameKey* a;
    PCGameKey* b;
    PCGameKey* c;
    PCGameKey* d;
    PCGameKey* e;
    PCGameKey* f;
    PCGameKey* g;
    PCGameKey* h;
    PCGameKey* i;
    PCGameKey* j;
    PCGameKey* k;
    PCGameKey* l;
    PCGameKey* m;
    PCGameKey* n;
    PCGameKey* o;
    PCGameKey* p;
    PCGameKey* q;
    PCGameKey* r;
    PCGameKey* s;
    PCGameKey* t;
    PCGameKey* u;
    PCGameKey* v;
    PCGameKey* w;
    PCGameKey* x;
    PCGameKey* y;
    PCGameKey* z;
    PCGameKey* ZERO;
    PCGameKey* ONE;
    PCGameKey* TWO;
    PCGameKey* THREE;
    PCGameKey* FOUR;
    PCGameKey* FIVE;
    PCGameKey* SIX;
    PCGameKey* SEVEN;
    PCGameKey* EIGHT;
    PCGameKey* NINE;
    PCGameKey* DPAD_UP;
    PCGameKey* DPAD_DOWN;
    PCGameKey* DPAD_LEFT;
    PCGameKey* DPAD_RIGHT;
    PCGameKey* DPAD_UP2;
    PCGameKey* DPAD_DOWN2;
    PCGameKey* DPAD_LEFT2;
    PCGameKey* DPAD_RIGHT2;
    PCGameKey* COMMA;
    PCGameKey* SPACE;
    PCGameKey* DEL;
    PCGameKey* STAR;
    PCGameKey* QUESTION;
    PCGameKey* PERIOD;
    PCGameKey* ESCAPE;
    PCGameKey* BACK_SPACE;
}
- (instancetype) init;
- (void) initFields;
+ (PCKeyFactory*) getInstance;
- (bool) isSubmission:(Input*)input;
- (bool) isDelete:(Input*)input;
- (bool) isBackSpace:(Input*)input;
- (bool) isUp:(Input*)input;
- (bool) isDown:(Input*)input;
- (bool) isLeft:(Input*)input;
- (bool) isRight:(Input*)input;
- (bool) isEnter:(Input*)input;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PCKeyFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_PCKEYFACTORY_H
