#ifndef ORG_ALLBINARY_MEDIA_AUDIO_SOUND_H
#define ORG_ALLBINARY_MEDIA_AUDIO_SOUND_H
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
@class Sound;
@class Player;
@class PreLogUtil;
@class CommonStrings;
@class SoundInterface;
@class NoPlayer;
#if __has_include("javax/microedition/media/Player.h")
#include "javax/microedition/media/Player.h"
#endif
#include "java/lang/Runnable.h"
#include "org/allbinary/media/audio/SoundInterface.h"

@interface Sound : ABObject <SoundInterface, Runnable> {
@public
    const char* resource;
    Player* player;
}
- (instancetype) init:(const char*)resource;
- (void) initFields;
- (const char*) getResource;
- (Player*) getPlayerP;
- (void) setPlayerP:(Player*)player;
- (void) init_;
- (int32_t) getDuration;
- (void) run;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Sound_staticInit(void);

#if __has_include("javax/microedition/media/Player.h")
#include "javax/microedition/media/Player.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_AUDIO_SOUND_H
