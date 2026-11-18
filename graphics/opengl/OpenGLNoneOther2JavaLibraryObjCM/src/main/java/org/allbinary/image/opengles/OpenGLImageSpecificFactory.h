#ifndef ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGESPECIFICFACTORY_H
#define ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGESPECIFICFACTORY_H
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
// package org.allbinary.image.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLImageSpecificFactory;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;
// #include "org/allbinary/logic/communication/log/PreLogUtil.h"
// #include "org/allbinary/logic/string/StringMaker.h"
// #include "org/allbinary/logic/string/StringUtil.h"

@interface OpenGLImageSpecificFactory : ABObject {
@public
    bool updating;
}
- (instancetype) init;
- (void) initFields;
+ (OpenGLImageSpecificFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLImageSpecificFactory_staticInit(void);


#endif // ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGESPECIFICFACTORY_H
