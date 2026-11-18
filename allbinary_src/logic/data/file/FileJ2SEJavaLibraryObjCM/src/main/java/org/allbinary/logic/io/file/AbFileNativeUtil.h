#ifndef ORG_ALLBINARY_LOGIC_IO_FILE_ABFILENATIVEUTIL_H
#define ORG_ALLBINARY_LOGIC_IO_FILE_ABFILENATIVEUTIL_H
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
// package org.allbinary.logic.io.file

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AbFileNativeUtil;
@class AbFile;
#include "java/io/File.h"

@interface AbFileNativeUtil : ABObject {
@public
}
- (instancetype) init;
+ (File*) get:(AbFile*)file;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbFileNativeUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_FILE_ABFILENATIVEUTIL_H
