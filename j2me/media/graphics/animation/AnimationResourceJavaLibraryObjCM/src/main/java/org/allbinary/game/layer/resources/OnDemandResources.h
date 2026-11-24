#ifndef ORG_ALLBINARY_GAME_LAYER_RESOURCES_ONDEMANDRESOURCES_H
#define ORG_ALLBINARY_GAME_LAYER_RESOURCES_ONDEMANDRESOURCES_H
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
@class OnDemandResources;
@class BaseResourceAnimationInterfaceFactoryInterfaceFactory;
@class ImageCache;
@class LogUtil;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface OnDemandResources : ABObject {
@public
    LogUtil* logUtil;
}
- (instancetype) init;
- (void) initFields;
- (void) waitFor;
- (void) initMethod;
- (int32_t) initAt:(ImageCache*)imageCache :(BaseResourceAnimationInterfaceFactoryInterfaceFactory*)resourceAnimationInterfaceFactoryInterfaceFactory :(int32_t)portion :(const char*)loadingString :(int32_t)index;
@end

extern OnDemandResources* OnDemandResources_NULL_ON_DEMAND_RESOURCES;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OnDemandResources_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_RESOURCES_ONDEMANDRESOURCES_H
