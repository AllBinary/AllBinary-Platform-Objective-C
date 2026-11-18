#ifndef ORG_ALLBINARY_GRAPHICS_FORM_LOCKABLEPAINTABLE_H
#define ORG_ALLBINARY_GRAPHICS_FORM_LOCKABLEPAINTABLE_H
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
// package org.allbinary.graphics.form

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LockablePaintable;
@class Graphics;
@class Animation;
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class LockedResources;
@class LockedUtil;
@class ItemPaintable;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#include "org/allbinary/graphics/form/ItemPaintable.h"

@interface LockablePaintable : ItemPaintable {
@public
    Animation* animation;
    int32_t lockedIndex;
}
- (instancetype) init:(int32_t)lockedIndex;
- (void) initFields;
- (void) paint:(Graphics*)graphics :(int32_t)currentIndex :(int32_t)x :(int32_t)y;
- (int32_t) getLockedIndex;
- (Animation*) getAnimation;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LockablePaintable_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_FORM_LOCKABLEPAINTABLE_H
