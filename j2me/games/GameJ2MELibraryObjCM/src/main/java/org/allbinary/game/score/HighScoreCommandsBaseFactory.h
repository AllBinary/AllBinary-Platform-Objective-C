#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORECOMMANDSBASEFACTORY_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORECOMMANDSBASEFACTORY_H
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
// package org.allbinary.game.score

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HighScoreCommandsBaseFactory;
@class Command;
@class J2MEUtil;
@class LogUtil;
#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif
// #include "org/allbinary/J2MEUtil.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface HighScoreCommandsBaseFactory : ABObject {
@public
    LogUtil* logUtil;
    Command** HIGH_SCORE_COMMANDS;
}
- (instancetype) init:(Command**)HIGH_SCORE_COMMANDS;
- (void) initFields;
- (bool) isHighScoreCommand:(Command*)command;
- (int32_t) getIndex:(Command*)command;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoreCommandsBaseFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORECOMMANDSBASEFACTORY_H
