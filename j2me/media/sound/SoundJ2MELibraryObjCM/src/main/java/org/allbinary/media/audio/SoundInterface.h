#ifndef ORG_ALLBINARY_MEDIA_AUDIO_SOUNDINTERFACE_H
#define ORG_ALLBINARY_MEDIA_AUDIO_SOUNDINTERFACE_H
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
@class SoundInterface;
@class Player;

@protocol SoundInterface
- (const char*) getResource;
- (Player*) getPlayerP;
- (void) initMethod;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SoundInterface_staticInit(void);

#if __has_include("javax/microedition/media/Player.h")
#include "javax/microedition/media/Player.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_AUDIO_SOUNDINTERFACE_H
