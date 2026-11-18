#ifndef ORG_ALLBINARY_AI_ARTIFICIALINTELLIGENCE_H
#define ORG_ALLBINARY_AI_ARTIFICIALINTELLIGENCE_H
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
// package org.allbinary.ai

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ArtificialIntelligence;
@class AllBinaryLayerManager;
@class ArtificialIntelligenceInterface;
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"

@interface ArtificialIntelligence : ABObject <ArtificialIntelligenceInterface> {
@public
}
- (instancetype) init;
+ (ArtificialIntelligence*) getInstance;
- (void) processAI:(AllBinaryLayerManager*)layerManager;
- (int32_t) getId;
@end

static constexpr int32_t ArtificialIntelligence_AI_ID = 2;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ArtificialIntelligence_staticInit(void);


#endif // ORG_ALLBINARY_AI_ARTIFICIALINTELLIGENCE_H
