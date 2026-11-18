#ifndef ORG_ALLBINARY_MEDIA_AUDIO_NOPLAYER_H
#define ORG_ALLBINARY_MEDIA_AUDIO_NOPLAYER_H
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
@class NoPlayer;
@class Control;
@class StringUtil;
@class BasicPlayer;
@class NullControl;
#include "org/allbinary/media/audio/BasicPlayer.h"

@interface NoPlayer : BasicPlayer {
@public
}
- (instancetype) init;
- (void) close;
- (const char*) getContentType;
- (Control*) getControl:(const char*)controlType;
- (Control**) getControls;
@end

extern NoPlayer* NoPlayer_NO_PLAYER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoPlayer_staticInit(void);

#if __has_include("javax/microedition/media/Control.h")
#include "javax/microedition/media/Control.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_AUDIO_NOPLAYER_H
