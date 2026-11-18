#ifndef ORG_ALLBINARY_ANIMATION_RESOURCE_BASERESOURCEANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
#define ORG_ALLBINARY_ANIMATION_RESOURCE_BASERESOURCEANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
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
// package org.allbinary.animation.resource

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BaseResourceAnimationInterfaceFactoryInterfaceFactory;
@class BasicAnimationInterfaceFactoryInterface;
@class NullAnimationFactory;
@class ResourceLoadingLevelFactory;
@class Rectangle;
@class RectangleFactory;
@class ImageCache;
@class LogUtil;
@class StringMaker;
@class CommonSeps;
@class CommonStrings;
@class ABHashtable;
@class FeatureResourceAnimationInterfaceFactoryInterface;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#include "org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface.h"

@interface BaseResourceAnimationInterfaceFactoryInterfaceFactory : ABObject <FeatureResourceAnimationInterfaceFactoryInterface> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    ABHashtable* hashtable;
    ABHashtable* rectangleHashtable;
    ABHashtable* rectangleArrayOfArraysHashtable;
    const char* name;
    bool initialized;
}
- (instancetype) init:(const char*)name :(ABHashtable*)hashtable :(ABHashtable*)rectangleHashtable :(ABHashtable*)rectangleArrayHashtable;
- (void) initFields;
- (const char*) getName;
- (void) init_:(int32_t)level;
- (void) initImageCache:(ImageCache*)imageCache :(int32_t)level;
- (void) add:(const char*)resource :(BasicAnimationInterfaceFactoryInterface*)animationInterfaceFactoryInterface;
- (BasicAnimationInterfaceFactoryInterface*) getBasicAnimationInterfaceFactoryInstance:(const char*)resource;
- (Rectangle*) getRectangle:(const char*)resource;
- (void) addRectangle:(const char*)resource :(Rectangle*)rectangle;
- (Rectangle***) getRectangleArrayOfArrays:(const char*)resource;
- (void) addRectangleArrayOfArrays:(const char*)resource :(Rectangle***)rectangleArrayOfArrays;
- (bool) isFeature;
- (bool) isLoadingLevel:(int32_t)level;
- (const char*) toString;
- (ABHashtable*) getHashtable;
- (ABHashtable*) getRectangleHashtable;
- (ABHashtable*) getRectangleArrayOfArraysHashtable;
- (void) setInitialized:(bool)initialized;
- (bool) isInitialized;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseResourceAnimationInterfaceFactoryInterfaceFactory_staticInit(void);

#if __has_include("org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_RESOURCE_BASERESOURCEANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
