#ifndef ORG_ALLBINARY_GAME_INPUT_MAPPING_INPUTMAPPING_H
#define ORG_ALLBINARY_GAME_INPUT_MAPPING_INPUTMAPPING_H
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
// package org.allbinary.game.input.mapping

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InputMapping;
@class Input;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonLabels;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class StdUtil;
@class ABHashtable;
@class InputToGameKeyMapping;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

@interface InputMapping : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    ABHashtable* hashtable;
    BasicArrayList* mappedList;
}
- (instancetype) init;
- (void) initFields;
- (int32_t) getTotalMapped;
- (bool) isDefaultNew;
- (InputToGameKeyMapping*) getDefault;
- (void) removeAll;
- (void) remove:(Input*)input :(Input*)mappedToInput;
- (void) addMapping:(InputToGameKeyMapping*)inputToGameKeyMapping;
- (void) add:(Input*)input :(Input*)mappedToInput;
- (bool) isMapped:(Input*)input;
- (BasicArrayList*) getMappedInput:(Input*)id_;
- (ABHashtable*) getHashtable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InputMapping_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_MAPPING_INPUTMAPPING_H
