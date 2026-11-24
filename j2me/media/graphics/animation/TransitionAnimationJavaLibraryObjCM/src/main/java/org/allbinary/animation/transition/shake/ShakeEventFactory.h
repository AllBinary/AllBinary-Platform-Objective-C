#ifndef ORG_ALLBINARY_ANIMATION_TRANSITION_SHAKE_SHAKEEVENTFACTORY_H
#define ORG_ALLBINARY_ANIMATION_TRANSITION_SHAKE_SHAKEEVENTFACTORY_H
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
// package org.allbinary.animation.transition.shake

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ShakeEventFactory;
@class ShakeEvent;
#if __has_include("org/allbinary/animation/transition/shake/ShakeEvent.h")
#include "org/allbinary/animation/transition/shake/ShakeEvent.h"
#endif

@interface ShakeEventFactory : ABObject {
@public
    ShakeEvent* MICRO;
    ShakeEvent* SMALL;
    ShakeEvent* MEDIUM;
    ShakeEvent* LARGE;
}
- (instancetype) init;
- (void) initFields;
+ (ShakeEventFactory*) getInstance;
- (void) initMethod;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ShakeEventFactory_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_TRANSITION_SHAKE_SHAKEEVENTFACTORY_H
