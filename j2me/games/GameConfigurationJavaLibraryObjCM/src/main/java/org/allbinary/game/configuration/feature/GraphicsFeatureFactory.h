#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GRAPHICSFEATUREFACTORY_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GRAPHICSFEATUREFACTORY_H
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
// package org.allbinary.game.configuration.feature

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GraphicsFeatureFactory;
@class StringUtil;
@class GraphicsFeature;
#if __has_include("org/allbinary/game/configuration/feature/GraphicsFeature.h")
#include "org/allbinary/game/configuration/feature/GraphicsFeature.h"
#endif

@interface GraphicsFeatureFactory : ABObject {
@public
    GraphicsFeature* NONE;
    GraphicsFeature* TRANSPARENT_IMAGE_CREATION;
    GraphicsFeature* IMAGE_GRAPHICS;
    GraphicsFeature* IMAGE_ROTATION_ON_THE_FLY;
    GraphicsFeature* IMAGE_TO_ARRAY_GRAPHICS;
    GraphicsFeature* SPRITE_QUARTER_ROTATION_GRAPHICS;
    GraphicsFeature* SPRITE_FULL_GRAPHICS;
    GraphicsFeature* VECTOR_GRAPHICS;
    GraphicsFeature* VECTOR_TO_IMAGE_GRAPHICS;
}
- (instancetype) init;
- (void) initFields;
+ (GraphicsFeatureFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GraphicsFeatureFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GRAPHICSFEATUREFACTORY_H
