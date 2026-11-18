#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_ANIMATIONFACTORYINITIALIZATIONVISITOR_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_ANIMATIONFACTORYINITIALIZATIONVISITOR_H
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
// package org.allbinary.animation.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AnimationFactoryInitializationVisitor;
@class StringMaker;
@class PositionStrings;
@class CommonLabels;
@class CommonSeps;

@interface AnimationFactoryInitializationVisitor : ABObject {
@public
    int32_t width;
    int32_t height;
    int32_t dx;
    int32_t dy;
    int32_t originalDx;
    int32_t originalDy;
}
- (instancetype) init;
- (void) initFields;
- (void) visit;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnimationFactoryInitializationVisitor_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_IMAGE_ANIMATIONFACTORYINITIALIZATIONVISITOR_H
