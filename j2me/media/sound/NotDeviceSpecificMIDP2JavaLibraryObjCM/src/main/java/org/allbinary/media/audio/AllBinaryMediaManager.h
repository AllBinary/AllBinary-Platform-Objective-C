#ifndef ORG_ALLBINARY_MEDIA_AUDIO_ALLBINARYMEDIAMANAGER_H
#define ORG_ALLBINARY_MEDIA_AUDIO_ALLBINARYMEDIAMANAGER_H
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
@class AllBinaryMediaManager;
@class Manager;
@class MediaException;
@class Player;
@class MIDPUtil;
@class TsUtil;
@class AudioContentTypeDataFactory;
@class ResourceUtil;
@class Features;
@class GameFeatureFactory;
@class ProgressCanvasFactory;
@class LogUtil;
@class CommonStrings;
@class Sounds;
@class SoundsFactoryInterface;
@class NoPlayer;
#include "java/io/InputStream.h"

//NotDeviceSpecificMIDP2JavaLibrary
@interface AllBinaryMediaManager : ABObject {
@public
}
- (instancetype) init;
+ (bool) isMuted;
+ (void) setMuted:(bool)aMuted;
+ (bool) update;
+ (void) initMethod:(SoundsFactoryInterface*)soundsFactoryInterface;
+ (void) shutdown:(SoundsFactoryInterface*)soundsFactoryInterface;
+ (Player*) createPlayer:(const char*)resource;
+ (void) playTone:(int32_t)frequency :(int32_t)time :(int32_t)volume;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryMediaManager_staticInit(void);

#if __has_include("javax/microedition/media/Player.h")
#include "javax/microedition/media/Player.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_AUDIO_ALLBINARYMEDIAMANAGER_H
