#ifndef ORG_ALLBINARY_GRAPHICS_FORM_SCREENINFO_H
#define ORG_ALLBINARY_GRAPHICS_FORM_SCREENINFO_H
// Generated Code Do Not Modify
// package org.allbinary.graphics.form

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ScreenInfo;

@interface ScreenInfo : ABObject {
@public
    int32_t SMALL_WIDTH;
    int32_t SMALL_HEIGHT;
    int32_t MEDIUM_WIDTH;
    int32_t MEDIUM_HEIGHT;
}
- (instancetype) init;
- (void) initFields;
+ (ScreenInfo*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScreenInfo_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_SCREENINFO_H
