#ifndef ORG_ALLBINARY_MEDIA_GRAPHICS_GEOGRAPHY_PATHFINDING_MULTIPASSSTATE_H
#define ORG_ALLBINARY_MEDIA_GRAPHICS_GEOGRAPHY_PATHFINDING_MULTIPASSSTATE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media.graphics.geography.pathfinding

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MultipassState;

@interface MultipassState : ABObject {
@public
    int32_t step;
    int32_t iteration;
    int32_t iteration2;
}
- (instancetype) init;
- (void) initFields;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MultipassState_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_GRAPHICS_GEOGRAPHY_PATHFINDING_MULTIPASSSTATE_H
