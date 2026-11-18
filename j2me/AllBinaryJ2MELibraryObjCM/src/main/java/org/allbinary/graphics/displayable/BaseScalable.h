#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_BASESCALABLE_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_BASESCALABLE_H
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
// package org.allbinary.graphics.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BaseScalable;
@class ScalableListener;
#include "org/allbinary/graphics/displayable/ScalableListener.h"

@interface BaseScalable : ABObject <ScalableListener> {
@public
}
- (instancetype) init;
- (float) getRatio:(float)ratio;
- (int32_t) getLeft:(int32_t)xOffset;
- (int32_t) getTop:(int32_t)yOffset;
- (void) scale:(float)ratio;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseScalable_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_BASESCALABLE_H
