#ifndef ORG_ALLBINARY_GAME_PART_MAKECOUNTEDPARTSSINGLETONARRAYFACTORY_H
#define ORG_ALLBINARY_GAME_PART_MAKECOUNTEDPARTSSINGLETONARRAYFACTORY_H
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
// package org.allbinary.game.part

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MakeCountedPartsSingletonArrayFactory;
@class CountedPickedUpLayerInterfaceFactory;
@class CountedPickedUpLayerInterfaceFactoryPool;
@class LogUtil;
@class StringMaker;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
@class CountedLayerInterfaceFactoryPart;
@class PartInterface;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface MakeCountedPartsSingletonArrayFactory : ABObject {
@public
    LogUtil* logUtil;
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
+ (MakeCountedPartsSingletonArrayFactory*) getInstance;
- (PartInterface**) getUpdated:(PartInterface**)partInterfaceArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MakeCountedPartsSingletonArrayFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PART_MAKECOUNTEDPARTSSINGLETONARRAYFACTORY_H
