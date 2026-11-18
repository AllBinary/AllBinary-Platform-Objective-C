#ifndef ORG_ALLBINARY_GAME_RESOURCE_RESOURCERELATIVERELATIONSHIPFACTORY_H
#define ORG_ALLBINARY_GAME_RESOURCE_RESOURCERELATIVERELATIONSHIPFACTORY_H
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
@class ResourceRelativeRelationshipFactory;
@class RelativeRelationship;
@class StdUtil;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
@class ResourceRelativeRelationshipFactoryInterface;
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif
#include "org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface.h"

@interface ResourceRelativeRelationshipFactory : ABObject <ResourceRelativeRelationshipFactoryInterface> {
@public
    BasicArrayListUtil* basicArrayListUtil;
    ABHashtable* hashtable;
    bool initialized;
}
- (instancetype) init;
- (void) initFields;
- (void) init_:(int32_t)level;
- (BasicArrayList*) getResourceRelativeRelationshipList:(const char*)resource;
- (void) addResourceRelativeRelationship:(const char*)resource :(RelativeRelationship*)hardPoint;
- (bool) isLoadingLevel:(int32_t)level;
- (bool) isFeature;
- (void) setInitialized:(bool)initialized;
- (bool) isInitialized;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ResourceRelativeRelationshipFactory_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_RESOURCE_RESOURCERELATIVERELATIONSHIPFACTORY_H
