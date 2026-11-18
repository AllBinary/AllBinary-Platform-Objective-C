#ifndef ORG_ALLBINARY_AG_WEAPON_MEDIA_AUDIO_EXPLOSIONBASICSOUND_H
#define ORG_ALLBINARY_AG_WEAPON_MEDIA_AUDIO_EXPLOSIONBASICSOUND_H
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
// package org.allbinary.ag.weapon.media.audio

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ExplosionBasicSound;
@class CompositeSound;
@class Sound;
#include "org/allbinary/media/audio/CompositeSound.h"
#if __has_include("org/allbinary/media/audio/Sound.h")
#include "org/allbinary/media/audio/Sound.h"
#endif

@interface ExplosionBasicSound : CompositeSound {
@public
}
- (instancetype) init;
+ (Sound*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ExplosionBasicSound_staticInit(void);

#if __has_include("org/allbinary/media/audio/Sound.h")
#include "org/allbinary/media/audio/Sound.h"
#endif

#endif // ORG_ALLBINARY_AG_WEAPON_MEDIA_AUDIO_EXPLOSIONBASICSOUND_H
