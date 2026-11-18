#ifndef ORG_ALLBINARY_GAME_AI_ARTIFICIALINTELLIGENCEINTERFACEFACTORYINTERFACEFACTORY_H
#define ORG_ALLBINARY_GAME_AI_ARTIFICIALINTELLIGENCEINTERFACEFACTORYINTERFACEFACTORY_H
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
// package org.allbinary.game.ai

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ArtificialIntelligenceInterfaceFactoryInterfaceFactory;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
@class BasicAI;
@class ArtificialIntelligenceInterfaceFactoryInterface;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Integer.h"

@interface ArtificialIntelligenceInterfaceFactoryInterfaceFactory : ABObject {
@public
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
- (void) clear;
+ (ArtificialIntelligenceInterfaceFactoryInterfaceFactory*) getInstance;
- (ArtificialIntelligenceInterfaceFactoryInterface*) getInstanceFromCollection:(ABHashtable*)hashtable;
- (void) add:(ArtificialIntelligenceInterfaceFactoryInterface*)artificialIntelligenceInterfaceFactoryInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ArtificialIntelligenceInterfaceFactoryInterfaceFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AI_ARTIFICIALINTELLIGENCEINTERFACEFACTORYINTERFACEFACTORY_H
