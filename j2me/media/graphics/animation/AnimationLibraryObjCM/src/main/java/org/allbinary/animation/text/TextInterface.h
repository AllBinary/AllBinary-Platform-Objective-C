#ifndef ORG_ALLBINARY_ANIMATION_TEXT_TEXTINTERFACE_H
#define ORG_ALLBINARY_ANIMATION_TEXT_TEXTINTERFACE_H
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
// package org.allbinary.animation.text

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TextInterface;
@class TextChangeListener;

@protocol TextInterface
- (void) setTextWithOnMeasure:(const char*)text :(TextChangeListener*)textChangeListener;
- (const char*) getText;
- (void) setText:(const char*)text;
- (int32_t) getFontHeight;
- (int32_t) getWidth;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TextInterface_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_TEXT_TEXTINTERFACE_H
