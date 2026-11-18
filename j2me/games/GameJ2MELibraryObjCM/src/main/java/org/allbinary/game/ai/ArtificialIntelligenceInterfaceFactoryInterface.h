#ifndef ORG_ALLBINARY_GAME_AI_ARTIFICIALINTELLIGENCEINTERFACEFACTORYINTERFACE_H
#define ORG_ALLBINARY_GAME_AI_ARTIFICIALINTELLIGENCEINTERFACEFACTORYINTERFACE_H
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
@class ArtificialIntelligenceInterfaceFactoryInterface;
@class ArtificialIntelligenceInterface;
@class GameInput;
@class AllBinaryLayer;
@class ABHashtable;

@protocol ArtificialIntelligenceInterfaceFactoryInterface
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ArtificialIntelligenceInterfaceFactoryInterface_staticInit(void);

#if __has_include("org/allbinary/ai/ArtificialIntelligenceInterface.h")
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#endif

#endif // ORG_ALLBINARY_GAME_AI_ARTIFICIALINTELLIGENCEINTERFACEFACTORYINTERFACE_H
