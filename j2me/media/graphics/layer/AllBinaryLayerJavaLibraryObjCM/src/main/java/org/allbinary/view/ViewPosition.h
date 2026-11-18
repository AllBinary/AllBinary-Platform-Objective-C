#ifndef ORG_ALLBINARY_VIEW_VIEWPOSITION_H
#define ORG_ALLBINARY_VIEW_VIEWPOSITION_H
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
// package org.allbinary.view

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ViewPosition;
@class AllBinaryLayer;
@class ViewPositionBase;
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#include "org/allbinary/view/ViewPositionBase.h"

@interface ViewPosition : ViewPositionBase {
@public
    AllBinaryLayer* allbinaryLayer;
}
- (instancetype) init:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) initFields;
+ (ViewPosition*) getInstanceD;
- (int32_t) getX;
- (int32_t) getY;
- (int32_t) getZ;
- (int32_t) getX2;
- (int32_t) getY2;
- (int32_t) getZ2;
- (void) setAllbinaryLayer:(id)allbinaryLayer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ViewPosition_staticInit(void);


#endif // ORG_ALLBINARY_VIEW_VIEWPOSITION_H
