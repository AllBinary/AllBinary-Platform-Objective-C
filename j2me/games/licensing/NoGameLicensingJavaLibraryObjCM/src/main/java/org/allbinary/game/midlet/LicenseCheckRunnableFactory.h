#ifndef ORG_ALLBINARY_GAME_MIDLET_LICENSECHECKRUNNABLEFACTORY_H
#define ORG_ALLBINARY_GAME_MIDLET_LICENSECHECKRUNNABLEFACTORY_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.midlet

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LicenseCheckRunnableFactory;
@class ABRunnable;
@class NullABRunnable;
@class SpecialDemoGameMidlet;

@interface LicenseCheckRunnableFactory : ABObject {
@public
}
- (instancetype) init;
- (ABRunnable*) getInstance:(SpecialDemoGameMidlet*)specialDemoGameMidlet;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LicenseCheckRunnableFactory_staticInit(void);

#if __has_include("org/allbinary/thread/ABRunnable.h")
#include "org/allbinary/thread/ABRunnable.h"
#endif

#endif // ORG_ALLBINARY_GAME_MIDLET_LICENSECHECKRUNNABLEFACTORY_H
