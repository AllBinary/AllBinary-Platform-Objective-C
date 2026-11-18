#ifndef ORG_ALLBINARY_MEDIA_AUDIO_NOSOUND_H
#define ORG_ALLBINARY_MEDIA_AUDIO_NOSOUND_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
@class NoSound;
@class StringUtil;
@class Sound;
@class NoPlayer;
#include "org/allbinary/media/audio/Sound.h"

@interface NoSound : Sound {
@public
}
- (instancetype) init;
+ (NoSound*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoSound_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_AUDIO_NOSOUND_H
