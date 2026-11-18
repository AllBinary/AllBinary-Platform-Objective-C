#ifndef ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONINDEXEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONINDEXEDANIMATION_H
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
// package org.allbinary.animation.caption

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CaptionIndexedAnimation;
@class Graphics;
@class Player;
@class Animation;
@class AnimationBehavior;
@class AnimationEventHandler;
@class IndexedAnimation;
@class PrimitiveIntUtil;
@class AllBinaryEventObject;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
#if __has_include("javax/microedition/media/Player.h")
#include "javax/microedition/media/Player.h"
#endif
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#include "org/allbinary/animation/IndexedAnimation.h"
#if __has_include("org/allbinary/logic/util/event/AllBinaryEventObject.h")
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif

@interface CaptionIndexedAnimation : IndexedAnimation {
@public
    Animation* animationInterface;
    IndexedAnimation* movieIndexedAnimationInterface;
    int32_t captionDx;
    int32_t captionDy;
    int32_t dx;
    int32_t dy;
    int32_t time;
    AllBinaryEventObject* END_EVENT;
    TimeDelayHelper* timeDelayHelper;
    Player* player;
}
- (instancetype) init:(Animation*)animationInterface :(IndexedAnimation*)movieIndexedAnimationInterface :(Player*)player :(int32_t)captionDx :(int32_t)captionDy :(int32_t)dx :(int32_t)dy :(int32_t)time :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) nextFrame;
- (bool) isLastFrame;
- (void) previousFrame;
- (void) setFrame:(int32_t)index;
- (int32_t) getFrame;
- (int32_t) getSize;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CaptionIndexedAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONINDEXEDANIMATION_H
