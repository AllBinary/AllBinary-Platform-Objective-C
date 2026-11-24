#ifndef ORG_ALLBINARY_MEDIA_AUDIO_BASESOUNDSFACTORY_H
#define ORG_ALLBINARY_MEDIA_AUDIO_BASESOUNDSFACTORY_H
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
@class BaseSoundsFactory;
@class SoundsFactoryInterface;
@class Sound;
#include "org/allbinary/media/audio/SoundsFactoryInterface.h"

@interface BaseSoundsFactory : ABObject <SoundsFactoryInterface> {
@public
    bool initialized;
}
- (instancetype) init;
- (void) initFields;
- (void) initMethod;
- (Sound**) getSoundInterfaceArray;
- (void) setInitialized:(bool)initialized;
- (bool) isInitialized;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseSoundsFactory_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_AUDIO_BASESOUNDSFACTORY_H
