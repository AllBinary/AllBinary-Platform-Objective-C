#ifndef ORG_ALLBINARY_MEDIA_AUDIO_PLAYERCOMPOSITE_H
#define ORG_ALLBINARY_MEDIA_AUDIO_PLAYERCOMPOSITE_H
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
@class PlayerComposite;
@class Control;
@class Controllable;
@class MediaException;
@class Player;
@class PlayerListener;
@class TimeBase;
@class LogUtil;
@class CommonStrings;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class TimeBaseInterface;
@class Controllable2;
#include "javax/microedition/media/Controllable.h"
#include "javax/microedition/media/Player.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif

//BasicPlayerMIDP2
@interface PlayerComposite : ABObject <Controllable, Player> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    Player* player;
    TimeDelayHelper* timeElapsedHelper;
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
}
- (instancetype) init:(Player*)player :(int32_t)repeatTime;
- (void) initFields;
- (void) addPlayerListener:(PlayerListener*)playerListener;
- (void) removePlayerListener:(PlayerListener*)playerListener;
- (void) close;
- (void) deallocate;
- (const char*) getContentType;
- (int64_t) getDuration;
- (int64_t) getMediaTime;
- (TimeBase*) getTimeBase;
- (void) setTimeBase:(TimeBase*)timeBase;
- (void) prefetch;
- (void) realize;
- (int32_t) getState;
- (void) setLoopCount:(int32_t)count;
- (int64_t) setMediaTime:(int64_t)now;
- (void) start;
- (void) stop;
- (Control*) getControl:(const char*)controlType;
- (Control**) getControls;
- (void) setVolume:(int32_t)leftVolume :(int32_t)rightVolume;
- (Player*) getPlayerP;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlayerComposite_staticInit(void);

#if __has_include("javax/microedition/media/Control.h")
#include "javax/microedition/media/Control.h"
#endif
#if __has_include("javax/microedition/media/Player.h")
#include "javax/microedition/media/Player.h"
#endif
#if __has_include("javax/microedition/media/TimeBase.h")
#include "javax/microedition/media/TimeBase.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_AUDIO_PLAYERCOMPOSITE_H
