#ifndef ORG_ALLBINARY_LOGIC_CONTROL_VALIDATE_VALIDATORBASE_H
#define ORG_ALLBINARY_LOGIC_CONTROL_VALIDATE_VALIDATORBASE_H
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
// package org.allbinary.logic.control.validate

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ValidatorBase;
@class StdUtil;
@class BooleanFactory;
@class StringUtil;
@class BasicArrayList;
@class BasicArrayListUtil;
@class ABHashtable;
@class ValidatorBaseInterface;
#include "java/lang/Boolean.h"
#include "org/allbinary/logic/control/validate/ValidatorBaseInterface.h"

@interface ValidatorBase : ABObject <ValidatorBaseInterface> {
@public
}
- (instancetype) init;
+ (ValidatorBase*) getInstance;
- (bool) isValid;
- (const char*) validationInfo;
- (ABHashtable*) toHashtable;
- (BasicArrayList*) toList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ValidatorBase_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_LOGIC_CONTROL_VALIDATE_VALIDATORBASE_H
