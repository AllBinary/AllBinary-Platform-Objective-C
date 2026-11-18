#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_COMMANDTEXTITEMARRAYFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_COMMANDTEXTITEMARRAYFACTORY_H
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
// package org.allbinary.graphics.form.item

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CommandTextItemArrayFactory;
@class Command;
@class ImageItem;
@class BasicColor;
@class DisplayInfoSingleton;
@class ScreenInfo;
@class VectorUtil;
@class StringUtil;
@class Visitor;
@class BasicArrayList;
@class BasicArrayListD;
@class CommandTextItem;
@class ABCustomItem;
#if __has_include("org/allbinary/logic/util/visitor/Visitor.h")
#include "org/allbinary/logic/util/visitor/Visitor.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Boolean.h"

@interface CommandTextItemArrayFactory : ABObject {
@public
    BasicArrayList* list;
    Visitor* visitorInterface;
}
- (instancetype) init:(Visitor*)visitorInterface;
- (void) initFields;
- (ABCustomItem**) getInstance:(id)vector :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommandTextItemArrayFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_COMMANDTEXTITEMARRAYFACTORY_H
