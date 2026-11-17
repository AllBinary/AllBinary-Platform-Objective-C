#ifndef ORG_ALLBINARY_LOGIC_JAVA_CHARACTERS_CHARACTERSETDATA_H
#define ORG_ALLBINARY_LOGIC_JAVA_CHARACTERS_CHARACTERSETDATA_H
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
// package org.allbinary.logic.java.characters

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CharacterSetData;

@interface CharacterSetData : ABObject {
@public
    const char* US_ASCII;
    const char* ISO_8859_1;
    const char* UTF_8;
    const char* UTF_16;
    const char* UTF_16BE;
    const char* UTF_16LE;
}
- (instancetype) init;
- (void) initFields;
+ (CharacterSetData*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CharacterSetData_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_JAVA_CHARACTERS_CHARACTERSETDATA_H
