#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORESINTERFACE_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORESINTERFACE_H
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
@class HighScoresInterface;
@class BasicArrayList;
@class HighScore;

@protocol HighScoresInterface
- (BasicArrayList*) getList;
- (void) addHighScore:(HighScore*)newHighScore;
- (int32_t) getTotal;
- (bool) isBestScore:(HighScore*)newHighScore;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoresInterface_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORESINTERFACE_H
