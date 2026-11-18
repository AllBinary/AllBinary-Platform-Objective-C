#ifndef ORG_ALLBINARY_GAME_LAYER_LEVELLAYERSFINDER_H
#define ORG_ALLBINARY_GAME_LAYER_LEVELLAYERSFINDER_H
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
// package org.allbinary.game.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LevelLayersFinder;
@class Layer;
@class SmallIntegerSingletonFactory;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class EnumerationUtil;
#include "java/util/Enumeration.h"
#if __has_include("org/allbinary/util/EnumerationUtil.h")
#include "org/allbinary/util/EnumerationUtil.h"
#endif
#include "java/lang/Integer.h"

@interface LevelLayersFinder : ABObject {
@public
    EnumerationUtil* enumerationUtil;
}
- (instancetype) init;
- (void) initFields;
+ (LevelLayersFinder*) getInstance;
- (BasicArrayList*) get:(ABHashtable*)hashtable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LevelLayersFinder_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_LEVELLAYERSFINDER_H
