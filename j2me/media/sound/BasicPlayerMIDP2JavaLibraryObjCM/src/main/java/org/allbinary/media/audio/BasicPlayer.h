#ifndef ORG_ALLBINARY_MEDIA_AUDIO_BASICPLAYER_H
#define ORG_ALLBINARY_MEDIA_AUDIO_BASICPLAYER_H
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
// package org.allbinary.media.audio

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicPlayer;
@class Control;
@class MediaException;
@class Player;
@class PlayerListener;
@class TimeBase;
@class StringUtil;
@class BasicArrayList;
@class BasicArrayListD;
@class TimeBaseInterface;
@class Controllable2;
@class NullControl;
#include "javax/microedition/media/Player.h"
#if __has_include("javax/microedition/media/TimeBase.h")
#include "javax/microedition/media/TimeBase.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/media/audio/TimeBaseInterface.h"
#include "org/allbinary/media/audio/Controllable2.h"

//BasicPlayerMIDP2JavaLibrary
@interface BasicPlayer : ABObject <Player, TimeBaseInterface, Controllable2> {
@public
    BasicArrayList* listenersList;
    TimeBase* timeBase;
    int32_t stateP;
    int32_t loopCountP;
}
- (instancetype) init;
- (void) initFields;
- (const char*) getContentType;
- (Control*) getControl:(const char*)controlType;
- (Control**) getControls;
- (void) close;
- (void) addPlayerListener:(PlayerListener*)playerListener;
- (void) removePlayerListener:(PlayerListener*)playerListener;
- (int32_t) getState;
- (void) setState:(int32_t)state;
- (int64_t) getDuration;
- (int64_t) getMediaTime;
- (TimeBase*) getTimeBase;
- (void) setTimeBase:(TimeBase*)timeBase;
- (void) deallocate;
- (void) prefetch;
- (void) realize;
- (void) setLoopCount:(int32_t)count;
- (int32_t) getLoopCount;
- (int64_t) setMediaTime:(int64_t)now;
- (void) start;
- (void) stop;
- (void) setVolume:(int32_t)leftVolume :(int32_t)rightVolume;
@end

extern const char* BasicPlayer_CONTROL_TYPE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicPlayer_staticInit(void);

#if __has_include("javax/microedition/media/Control.h")
#include "javax/microedition/media/Control.h"
#endif
#if __has_include("javax/microedition/media/TimeBase.h")
#include "javax/microedition/media/TimeBase.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_AUDIO_BASICPLAYER_H
