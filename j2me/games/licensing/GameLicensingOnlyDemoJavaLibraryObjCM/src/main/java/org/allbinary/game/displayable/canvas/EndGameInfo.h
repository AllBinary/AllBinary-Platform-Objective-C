#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ENDGAMEINFO_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ENDGAMEINFO_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class EndGameInfo;
@class GameInfo;
@class MyCanvas;
@class StringUtil;

@interface EndGameInfo : ABObject {
@public
    const char* NORMAL_GAME_OVER_WIN;
    const char* TEASER_DEMO_GAME_END_LAST_LEVEL;
    const char* TEASER_DEMO_GAME_END;
    const char* gameOverStr;
    const char* winStr;
}
- (instancetype) init;
- (void) initFields;
- (void) update:(GameInfo*)gameInfo :(MyCanvas*)myCanvas;
- (const char*) getGameOverStr;
- (void) setGameOverStr:(const char*)gameOverStr;
- (const char*) getWinStr;
- (void) setWinStr:(const char*)winStr;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void EndGameInfo_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ENDGAMEINFO_H
