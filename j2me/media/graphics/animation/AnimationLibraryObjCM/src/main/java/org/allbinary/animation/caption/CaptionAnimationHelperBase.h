#ifndef ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONANIMATIONHELPERBASE_H
#define ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONANIMATIONHELPERBASE_H
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
// package org.allbinary.animation.caption

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CaptionAnimationHelperBase;
@class Graphics;
@class Animation;
@class BasicColor;
#include "org/allbinary/animation/Animation.h"

@interface CaptionAnimationHelperBase : Animation {
@public
}
- (instancetype) init;
- (bool) isShowing;
- (void) tick;
- (void) update:(const char*)message :(BasicColor*)basicColor;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

extern CaptionAnimationHelperBase* CaptionAnimationHelperBase_INSTANCE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CaptionAnimationHelperBase_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONANIMATIONHELPERBASE_H
