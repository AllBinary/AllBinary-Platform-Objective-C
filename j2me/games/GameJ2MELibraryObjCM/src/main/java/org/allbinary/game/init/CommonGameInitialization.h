#ifndef ORG_ALLBINARY_GAME_INIT_COMMONGAMEINITIALIZATION_H
#define ORG_ALLBINARY_GAME_INIT_COMMONGAMEINITIALIZATION_H
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
// package org.allbinary.game.init

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CommonGameInitialization;
@class CommandListener;
@class ResourceInitialization;
@class ResourceLoadingLevelFactory;
@class PointFactory;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class SmallIntegerSingletonFactory;
@class AbeClientInformationInterface;
@class AngleFactory;
@class CommonStrings;
@class BaseGameInitialization;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "org/allbinary/game/init/BaseGameInitialization.h"

@interface CommonGameInitialization : BaseGameInitialization {
@public
    CommonStrings* commonStrings;
}
- (instancetype) init:(ResourceInitialization**)resourceInitializationArray :(int32_t)portion;
- (void) initFields;
- (void) init_:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(int32_t)level;
- (void) initGame;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommonGameInitialization_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INIT_COMMONGAMEINITIALIZATION_H
