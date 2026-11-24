#ifndef JAVAX_MICROEDITION_LCDUI_CHOICEGROUPIMAGEFACTORY_H
#define JAVAX_MICROEDITION_LCDUI_CHOICEGROUPIMAGEFACTORY_H
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
// package javax.microedition.lcdui

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ChoiceGroupImageFactory;
@class MIDPUtil;
@class Image;
#if __has_include("org/allbinary/MIDPUtil.h")
#include "org/allbinary/MIDPUtil.h"
#endif
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

@interface ChoiceGroupImageFactory : ABObject {
@public
    int8_t* multiOff;
    int8_t* multiOn;
    int8_t* radioOff;
    int8_t* radioOn;
    MIDPUtil* midpUtil;
    Image* imgMultiOffO;
    Image* imgMultiOnO;
    Image* imgRadioOffO;
    Image* imgRadioOnO;
    Image* imgMultiOff;
    Image* imgMultiOn;
    Image* imgRadioOff;
    Image* imgRadioOn;
    Image** imageArray;
}
- (instancetype) init;
- (void) initFields;
+ (ChoiceGroupImageFactory*) getInstance;
- (Image**) getImageArray;
- (void) initMethod:(Image**)imageArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ChoiceGroupImageFactory_staticInit(void);


#endif // JAVAX_MICROEDITION_LCDUI_CHOICEGROUPIMAGEFACTORY_H
