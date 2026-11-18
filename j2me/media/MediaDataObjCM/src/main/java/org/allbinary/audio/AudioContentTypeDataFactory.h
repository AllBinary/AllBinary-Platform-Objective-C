#ifndef ORG_ALLBINARY_AUDIO_AUDIOCONTENTTYPEDATAFACTORY_H
#define ORG_ALLBINARY_AUDIO_AUDIOCONTENTTYPEDATAFACTORY_H
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
// package org.allbinary.audio

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AudioContentTypeDataFactory;
@class AudioContentTypeData;
#if __has_include("org/allbinary/audio/AudioContentTypeData.h")
#include "org/allbinary/audio/AudioContentTypeData.h"
#endif

@interface AudioContentTypeDataFactory : ABObject {
@public
    AudioContentTypeData* MIME_AUDIO_TONE;
    AudioContentTypeData* MIME_AUDIO_AMR;
    AudioContentTypeData* MIME_AUDIO_AMR_WB;
    AudioContentTypeData* MIME_AUDIO_WAV;
    AudioContentTypeData* MIME_AUDIO_MIDI;
    AudioContentTypeData* MIME_AUDIO_SP_MIDI;
}
- (instancetype) init;
- (void) initFields;
+ (AudioContentTypeDataFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AudioContentTypeDataFactory_staticInit(void);


#endif // ORG_ALLBINARY_AUDIO_AUDIOCONTENTTYPEDATAFACTORY_H
