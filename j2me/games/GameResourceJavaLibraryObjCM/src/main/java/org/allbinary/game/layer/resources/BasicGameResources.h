#ifndef ORG_ALLBINARY_GAME_LAYER_RESOURCES_BASICGAMERESOURCES_H
#define ORG_ALLBINARY_GAME_LAYER_RESOURCES_BASICGAMERESOURCES_H
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
@class BasicGameResources;
@class GameConfigurationCentral;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
@class GameGraphicsResourceUtil;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif

@interface BasicGameResources : ABObject {
@public
    LogUtil* logUtil;
    const char* RESOURCE;
    const char* RESOURCE_DESTROY;
}
- (instancetype) init;
- (void) initFields;
- (void) init_:(const char*)ROOT :(const char**)SIZE;
- (void) append:(const char*)ROOT :(const char*)sizeString;
- (const char*) getString;
@end

extern StringMaker* BasicGameResources_stringBuffer;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicGameResources_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_RESOURCES_BASICGAMERESOURCES_H
