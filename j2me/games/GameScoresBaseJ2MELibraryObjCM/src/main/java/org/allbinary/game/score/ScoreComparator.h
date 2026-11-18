#ifndef ORG_ALLBINARY_GAME_SCORE_SCORECOMPARATOR_H
#define ORG_ALLBINARY_GAME_SCORE_SCORECOMPARATOR_H
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
@class ScoreComparator;
@class RecordComparator;
@class LogUtil;
@class CommonStrings;
#include "java/io/ByteArrayInputStream.h"
#include "java/io/DataInputStream.h"
#include "java/io/EOFException.h"
#include "java/io/IOException.h"
#include "javax/microedition/rms/RecordComparator.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "java/lang/Long.h"

@interface ScoreComparator : ABObject <RecordComparator> {
@public
    LogUtil* logUtil;
    bool isHighestBest;
}
- (instancetype) init:(bool)isHighestBest;
- (void) initFields;
- (int64_t) getBestScore;
- (int32_t) compare:(int8_t*)recordOne :(int8_t*)recordTwo;
- (int32_t) getHighTooLow:(int64_t)scoreOne :(int64_t)scoreTwo;
- (int32_t) getLowTooHigh:(int64_t)scoreOne :(int64_t)scoreTwo;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScoreComparator_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_SCORECOMPARATOR_H
