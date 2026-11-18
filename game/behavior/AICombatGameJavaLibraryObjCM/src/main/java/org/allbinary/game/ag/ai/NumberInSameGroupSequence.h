#ifndef ORG_ALLBINARY_GAME_AG_AI_NUMBERINSAMEGROUPSEQUENCE_H
#define ORG_ALLBINARY_GAME_AG_AI_NUMBERINSAMEGROUPSEQUENCE_H
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
// package org.allbinary.game.ag.ai

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NumberInSameGroupSequence;
@class SmallIntegerSingletonFactory;
#include "java/lang/Integer.h"

@interface NumberInSameGroupSequence : ABObject {
@public
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_ONE;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_TWO;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_THREE;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_SIX;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT;
    int32_t NUMBER_ON_SAME_TEAM_SEQUENCE_NINE;
    int32_t* NUMBER_ON_SAME_TEAM_SEQUENCE;
}
- (instancetype) init;
- (void) initFields;
+ (NumberInSameGroupSequence*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NumberInSameGroupSequence_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_NUMBERINSAMEGROUPSEQUENCE_H
