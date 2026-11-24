#ifndef ORG_ALLBINARY_MEDIA_AUDIO_SOUNDS_H
#define ORG_ALLBINARY_MEDIA_AUDIO_SOUNDS_H
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
@class Sounds;
@class Player;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class LogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class CommonLabels;
@class CommonStrings;
@class SoundStrings;
@class SoundsFactoryInterface;
@class Sound;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "java/lang/Integer.h"
#if __has_include("org/allbinary/media/audio/SoundStrings.h")
#include "org/allbinary/media/audio/SoundStrings.h"
#endif
#if __has_include("org/allbinary/media/audio/SoundsFactoryInterface.h")
#include "org/allbinary/media/audio/SoundsFactoryInterface.h"
#endif

@interface Sounds : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    SoundStrings* soundStrings;
    SoundsFactoryInterface* soundsFactoryInterface;
}
- (instancetype) init:(SoundsFactoryInterface*)soundsFactoryInterface;
- (void) initFields;
- (void) initMethod;
- (void) stopAll;
- (void) closeAll;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Sounds_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_AUDIO_SOUNDS_H
