#ifndef ORG_ALLBINARY_INPUT_NOALLBINARYSENSOR_H
#define ORG_ALLBINARY_INPUT_NOALLBINARYSENSOR_H
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
// package org.allbinary.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NoAllBinarySensor;
@class AllBinarySensor;
#include "org/allbinary/input/AllBinarySensor.h"

@interface NoAllBinarySensor : AllBinarySensor {
@public
}
- (instancetype) init;
+ (NoAllBinarySensor*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoAllBinarySensor_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_NOALLBINARYSENSOR_H
