#ifndef ORG_ALLBINARY_GAME_RESOURCE_FEATURERESOURCEINITIALIZATIONUTIL_H
#define ORG_ALLBINARY_GAME_RESOURCE_FEATURERESOURCEINITIALIZATIONUTIL_H
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
@class FeatureResourceInitializationUtil;
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class LogUtil;
@class CommonStrings;
@class FeaturedResourceFactory;
@class FeaturedResourceRelativeRelationshipFactory;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface FeatureResourceInitializationUtil : ABObject {
@public
    LogUtil* logUtil;
}
- (instancetype) init;
- (void) initFields;
+ (FeatureResourceInitializationUtil*) getInstance;
- (void) init_:(int32_t)level;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FeatureResourceInitializationUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_RESOURCE_FEATURERESOURCEINITIALIZATIONUTIL_H
