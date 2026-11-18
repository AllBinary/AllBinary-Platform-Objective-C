#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABSTRINGCOMPONENT_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABSTRINGCOMPONENT_H
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
@class ABStringComponent;
@class BasicColor;
@class BasicColorFactory;

@interface ABStringComponent : ABObject {
@public
}
- (instancetype) init:(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (BasicColor*) getBackgroundBasicColor;
- (BasicColor*) getForegroundBasicColor;
- (void) setForegroundBasicColor:(BasicColor*)foregroundBasicColor;
@end

extern ABStringComponent* ABStringComponent_NULL_STRING_COMPONENT;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABStringComponent_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABSTRINGCOMPONENT_H
