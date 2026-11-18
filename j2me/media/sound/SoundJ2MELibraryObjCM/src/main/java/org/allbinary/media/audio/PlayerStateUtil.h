#ifndef ORG_ALLBINARY_MEDIA_AUDIO_PLAYERSTATEUTIL_H
#define ORG_ALLBINARY_MEDIA_AUDIO_PLAYERSTATEUTIL_H
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
@class PlayerStateUtil;
@class Player;
@class CommonStrings;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface PlayerStateUtil : ABObject {
@public
    CommonStrings* commonStrings;
    const char* UNREALIZED;
    const char* REALIZED;
    const char* PREFETCHED;
    const char* STARTED;
    const char* CLOSED;
}
- (instancetype) init;
- (void) initFields;
+ (PlayerStateUtil*) getInstance;
- (const char*) convert:(int32_t)state;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlayerStateUtil_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_AUDIO_PLAYERSTATEUTIL_H
