#ifndef ORG_ALLBINARY_GAME_RESOURCE_RESOURCELOADINGLEVELFACTORY_H
#define ORG_ALLBINARY_GAME_RESOURCE_RESOURCELOADINGLEVELFACTORY_H
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
// package org.allbinary.game.resource

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ResourceLoadingLevelFactory;
@class ResourceLoadingLevel;
#include "java/lang/Integer.h"
#if __has_include("org/allbinary/game/resource/ResourceLoadingLevel.h")
#include "org/allbinary/game/resource/ResourceLoadingLevel.h"
#endif

@interface ResourceLoadingLevelFactory : ABObject {
@public
    ResourceLoadingLevel* LOAD_EARLY;
    ResourceLoadingLevel* LOAD_TOUCH;
    ResourceLoadingLevel* LOAD_GAME;
    ResourceLoadingLevel* LEVEL;
    ResourceLoadingLevel* MAX_LEVEL;
    ResourceLoadingLevel* LOAD_ALL;
    ResourceLoadingLevel** RESOURCE_LOADING_LEVEL_ARRAY;
}
- (instancetype) init;
- (void) initFields;
+ (ResourceLoadingLevelFactory*) getInstance;
- (const char*) getLevelString:(int32_t)level;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ResourceLoadingLevelFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_RESOURCE_RESOURCELOADINGLEVELFACTORY_H
