#ifndef ORG_ALLBINARY_GAME_SCORE_LASTFETCHHIGHSCORESFACTORY_H
#define ORG_ALLBINARY_GAME_SCORE_LASTFETCHHIGHSCORESFACTORY_H
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
// package org.allbinary.game.score

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LastFetchHighScoresFactory;
@class NullUtil;
@class NoHighScoresFactory;
@class HighScores;
#if __has_include("org/allbinary/game/score/HighScores.h")
#include "org/allbinary/game/score/HighScores.h"
#endif

@interface LastFetchHighScoresFactory : ABObject {
@public
    HighScores** highScoresArray;
}
- (instancetype) init;
- (void) initFields;
+ (LastFetchHighScoresFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LastFetchHighScoresFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_LASTFETCHHIGHSCORESFACTORY_H
