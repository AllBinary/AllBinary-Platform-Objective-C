#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMITEMINTERFACE_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMITEMINTERFACE_H
// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ABCustomItemInterface;
@class Graphics;

@protocol ABCustomItemInterface
- (int32_t) getMinimumWidth;
- (int32_t) getMinimumHeight;
- (const char*) getLabel;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintUnselected:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABCustomItemInterface_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMITEMINTERFACE_H
