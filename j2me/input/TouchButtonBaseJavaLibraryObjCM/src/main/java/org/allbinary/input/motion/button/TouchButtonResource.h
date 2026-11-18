#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRESOURCE_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRESOURCE_H
/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.input.motion.button

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TouchButtonResource;

@interface TouchButtonResource : ABObject {
@public
    const char* RESOURCE;
    const char* HINT;
}
- (instancetype) init:(const char*)resource :(const char*)hint;
- (void) initFields;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonResource_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRESOURCE_H
