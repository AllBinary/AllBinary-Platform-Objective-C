#ifndef ORG_ALLBINARY_MEDIA_AUDIO_ERRORSOUND_H
#define ORG_ALLBINARY_MEDIA_AUDIO_ERRORSOUND_H
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
@class ErrorSound;
@class CompositeSound;
@class Sound;
#include "org/allbinary/media/audio/CompositeSound.h"
#if __has_include("org/allbinary/media/audio/Sound.h")
#include "org/allbinary/media/audio/Sound.h"
#endif

@interface ErrorSound : CompositeSound {
@public
}
- (instancetype) init;
+ (Sound*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ErrorSound_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_AUDIO_ERRORSOUND_H
