#ifndef ORG_ALLBINARY_ANIMATION_FEATUREDANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
#define ORG_ALLBINARY_ANIMATION_FEATUREDANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
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
// package org.allbinary.animation

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class FeatureResourceAnimationInterfaceFactoryInterface;
@class GameConfigurationCentral;
@class FeaturedResourceFactory;
@class PointFactory;
@class Rectangle;
@class RectangleFactory;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class BasicArrayList;
@class BasicArrayListD;
@class ProceduralAnimationInterfaceFactoryInterface;
@class AnimationInterfaceFactoryInterface;
@class BasicAnimationInterfaceFactoryInterface;
@class NullAnimationFactory;
#include "org/allbinary/game/resource/FeaturedResourceFactory.h"

@interface FeaturedAnimationInterfaceFactoryInterfaceFactory : FeaturedResourceFactory {
@public
}
- (instancetype) init;
+ (FeaturedAnimationInterfaceFactoryInterfaceFactory*) getInstance;
- (Rectangle*) getRectangle:(const char*)resource;
- (Rectangle*) getRectangleXY:(const char*)resource :(int32_t)x :(int32_t)y;
- (ProceduralAnimationInterfaceFactoryInterface*) getProcedural:(const char*)resource;
- (AnimationInterfaceFactoryInterface*) get:(const char*)resource;
- (BasicAnimationInterfaceFactoryInterface*) getBasicAnimationInterfaceFactoryInstance:(const char*)resource;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FeaturedAnimationInterfaceFactoryInterfaceFactory_staticInit(void);

#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_FEATUREDANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
