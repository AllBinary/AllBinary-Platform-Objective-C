#ifndef ORG_ALLBINARY_AI_ARTIFICIALINTELLIGENCEFACTORY_H
#define ORG_ALLBINARY_AI_ARTIFICIALINTELLIGENCEFACTORY_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
@class ArtificialIntelligenceFactory;
@class ArtificialIntelligenceFactoryInterface;
@class ArtificialIntelligence;
#include "org/allbinary/ai/ArtificialIntelligenceFactoryInterface.h"

@interface ArtificialIntelligenceFactory : ABObject <ArtificialIntelligenceFactoryInterface> {
@public
}
- (instancetype) init;
- (ArtificialIntelligence*) getInstance:(id)anyType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ArtificialIntelligenceFactory_staticInit(void);


#endif // ORG_ALLBINARY_AI_ARTIFICIALINTELLIGENCEFACTORY_H
