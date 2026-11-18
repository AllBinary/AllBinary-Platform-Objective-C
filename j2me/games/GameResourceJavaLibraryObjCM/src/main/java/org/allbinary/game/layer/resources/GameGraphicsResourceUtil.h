#ifndef ORG_ALLBINARY_GAME_LAYER_RESOURCES_GAMEGRAPHICSRESOURCEUTIL_H
#define ORG_ALLBINARY_GAME_LAYER_RESOURCES_GAMEGRAPHICSRESOURCEUTIL_H
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
// package org.allbinary.game.layer.resources

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameGraphicsResourceUtil;
@class Features;
@class GraphicsFeature;
@class GraphicsFeatureFactory;
@class CanvasStrings;
@class OpenGLFeatureUtil;
@class NullUtil;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface GameGraphicsResourceUtil : ABObject {
@public
    LogUtil* logUtil;
    const char* SPRITE;
    const char* QUARTER;
    const char* name;
}
- (instancetype) init;
- (void) initFields;
+ (GameGraphicsResourceUtil*) getInstance;
- (const char*) getString;
- (const char*) getStringForFeature:(GraphicsFeature*)graphicsFeature;
- (const char*) getName;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameGraphicsResourceUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_RESOURCES_GAMEGRAPHICSRESOURCEUTIL_H
