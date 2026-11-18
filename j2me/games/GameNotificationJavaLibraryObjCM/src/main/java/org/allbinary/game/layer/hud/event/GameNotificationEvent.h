#ifndef ORG_ALLBINARY_GAME_LAYER_HUD_EVENT_GAMENOTIFICATIONEVENT_H
#define ORG_ALLBINARY_GAME_LAYER_HUD_EVENT_GAMENOTIFICATIONEVENT_H
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
// package org.allbinary.game.layer.hud.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameNotificationEvent;
@class BasicColor;
@class BasicColorFactory;
@class StringUtil;
@class AllBinaryEventObject;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "java/lang/Integer.h"
#include "java/lang/Boolean.h"

@interface GameNotificationEvent : AllBinaryEventObject {
@public
    const char* string;
    int32_t seconds;
    BasicColor* basicColor;
    bool removeable;
}
- (instancetype) init:(id)anyType :(const char*)string :(int32_t)seconds :(BasicColor*)basicColor :(bool)permanent;
- (void) initFields;
- (const char*) getString;
- (int32_t) getSeconds;
- (BasicColor*) getBasicColorP;
- (bool) getPermanent;
- (void) setString:(const char*)string;
- (void) setBasicColorP:(BasicColor*)basicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameNotificationEvent_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_HUD_EVENT_GAMENOTIFICATIONEVENT_H
