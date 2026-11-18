#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRESOURCEANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRESOURCEANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
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
// package org.allbinary.input.motion.button

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;
@class Image;
@class AnimationBehaviorFactory;
@class NullAnimationFactory;
@class OneRowSpriteIndexedAnimationFactory;
@class BaseResourceAnimationInterfaceFactoryInterfaceFactory;
@class Features;
@class ResourceLoadingLevelFactory;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class OpenGLFeatureFactory;
@class ImageCache;
@class ImageCacheFactory;
@class StdUtil;
@class StringMaker;
@class OperatingSystemFactory;
@class ImageCompleteUtil;
@class TouchButtonBlankResource;
@class TouchButtonResource;
@class TouchButtonGenericActionResource;
@class TouchButtonStartResource;
@class TouchButtonUpResource;
@class TouchButtonDownResource;
@class TouchButtonTurnLeftResource;
@class TouchButtonTurnRightResource;
@class TouchButtonStrafeLeftResource;
@class TouchButtonStrafeRightResource;
#include "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.h"

@interface TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory {
@public
}
- (instancetype) init:(const char*)name;
+ (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*) createFactory;
- (void) init_:(int32_t)level;
- (void) initImageCache:(ImageCache*)imageCache :(int32_t)level;
- (bool) isLoadingLevel:(int32_t)level;
- (bool) isFeature;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRESOURCEANIMATIONINTERFACEFACTORYINTERFACEFACTORY_H
