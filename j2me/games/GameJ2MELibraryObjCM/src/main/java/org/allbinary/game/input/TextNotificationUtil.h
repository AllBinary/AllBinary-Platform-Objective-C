#ifndef ORG_ALLBINARY_GAME_INPUT_TEXTNOTIFICATIONUTIL_H
#define ORG_ALLBINARY_GAME_INPUT_TEXTNOTIFICATIONUTIL_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TextNotificationUtil;
@class GameNotificationEvent;
@class GameNotificationEventHandler;
@class BasicColorFactory;
@class BooleanFactory;
@class SmallIntegerSingletonFactory;
@class ErrorSound;
@class PrimaryPlayerQueueFactory;
@class SelectSound;
#if __has_include("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h")
#include "org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h"
#endif
#include "java/lang/Integer.h"
#include "java/lang/Boolean.h"

@interface TextNotificationUtil : ABObject {
@public
    int32_t TWO;
    bool FALSE;
    GameNotificationEventHandler* gameNotificationEventHandler;
}
- (instancetype) init;
- (void) initFields;
+ (TextNotificationUtil*) getInstance;
- (void) fireError:(const char*)message;
- (void) fireNew:(const char*)message;
- (void) fireSuccess:(const char*)message;
- (void) fire:(const char*)message;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TextNotificationUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_TEXTNOTIFICATIONUTIL_H
