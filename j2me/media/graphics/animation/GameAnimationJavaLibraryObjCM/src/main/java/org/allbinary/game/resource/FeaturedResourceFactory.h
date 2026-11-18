#ifndef ORG_ALLBINARY_GAME_RESOURCE_FEATUREDRESOURCEFACTORY_H
#define ORG_ALLBINARY_GAME_RESOURCE_FEATUREDRESOURCEFACTORY_H
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
@class FeaturedResourceFactory;
@class Features;
@class GameFeatureControlledInterface;
@class GraphicsFeatureFactory;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonLabels;
@class CommonSeps;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class ResourceLoadingLevelFactory;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface FeaturedResourceFactory : ABObject {
@public
    LogUtil* logUtil;
    BasicArrayList* list;
    CommonStrings* commonStrings;
    const char* ANIMATION_FEATURES;
    const char* IMAGE_LABEL;
    const char* IMAGE_GRAPHICS_ARRAY;
    const char* IMAGE_GRAPHICS_ROTATION;
    const char* SPRITE_QUARTER;
    const char* SPRITE_FULL;
    const char* IS_LOADING_LEVEL_LABEL;
    const char* IS_FEATURE;
    const char* GAME_FEATURE_CONTROLLED;
}
- (instancetype) init;
- (void) initFields;
- (void) init_:(int32_t)level;
- (void) clear;
- (void) add:(GameFeatureControlledInterface*)featureInterface;
- (BasicArrayList*) getList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FeaturedResourceFactory_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_RESOURCE_FEATUREDRESOURCEFACTORY_H
