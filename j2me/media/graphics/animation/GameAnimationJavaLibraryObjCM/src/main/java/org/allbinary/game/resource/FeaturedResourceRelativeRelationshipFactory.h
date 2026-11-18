#ifndef ORG_ALLBINARY_GAME_RESOURCE_FEATUREDRESOURCERELATIVERELATIONSHIPFACTORY_H
#define ORG_ALLBINARY_GAME_RESOURCE_FEATUREDRESOURCERELATIVERELATIONSHIPFACTORY_H
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
@class FeaturedResourceRelativeRelationshipFactory;
@class PointFactory;
@class RelativeRelationship;
@class AllBinaryLayer;
@class RelativeLayerRelationship;
@class StringMaker;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
@class FeaturedResourceFactory;
@class ResourceRelativeRelationshipFactoryInterface;
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif
#include "org/allbinary/game/resource/FeaturedResourceFactory.h"

@interface FeaturedResourceRelativeRelationshipFactory : FeaturedResourceFactory {
@public
    BasicArrayListUtil* basicArrayListUtil;
}
- (instancetype) init;
- (void) initFields;
+ (FeaturedResourceRelativeRelationshipFactory*) getInstance;
- (BasicArrayList*) getRelativeRelationshipList:(const char*)resource :(AllBinaryLayer*)layer;
- (BasicArrayList*) duplicate:(BasicArrayList*)list :(AllBinaryLayer*)layer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FeaturedResourceRelativeRelationshipFactory_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_RESOURCE_FEATUREDRESOURCERELATIVERELATIONSHIPFACTORY_H
