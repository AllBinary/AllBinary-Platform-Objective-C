#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ABCUSTOMFORM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ABCUSTOMFORM_H
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
@class ABCustomForm;
@class Graphics;
@class BasicColor;
@class ABCustomItem;
@class LogUtil;
@class StringUtil;
@class CommonStrings;
@class CustomScreen;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "org/allbinary/graphics/form/CustomScreen.h"

@interface ABCustomForm : CustomScreen {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
}
- (instancetype) init:(const char*)title :(ABCustomItem**)items :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (ABCustomItem**) getAllitems;
- (int32_t) size;
- (void) setSelectedIndex:(int32_t)index;
- (int32_t) getSelectedIndex;
- (void) deleteAll;
- (void) delete:(int32_t)itemNum;
- (int32_t) append:(ABCustomItem*)item;
- (void) insert:(int32_t)itemNum :(ABCustomItem*)item;
- (void) set:(int32_t)itemNum :(ABCustomItem*)item;
- (ABCustomItem*) get:(int32_t)itemNum;
- (int32_t) getWidth;
- (void) paint:(Graphics*)graphics;
- (const char*) getTitle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABCustomForm_staticInit(void);

#if __has_include("org/allbinary/graphics/form/item/ABCustomItem.h")
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_FORM_ABCUSTOMFORM_H
