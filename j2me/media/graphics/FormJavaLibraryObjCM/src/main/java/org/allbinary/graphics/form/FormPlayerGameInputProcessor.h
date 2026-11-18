#ifndef ORG_ALLBINARY_GRAPHICS_FORM_FORMPLAYERGAMEINPUTPROCESSOR_H
#define ORG_ALLBINARY_GRAPHICS_FORM_FORMPLAYERGAMEINPUTPROCESSOR_H
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
// package org.allbinary.graphics.form

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class FormPlayerGameInputProcessor;
@class Processor;
@class PlayerGameInputCompositeInterface;
#include "org/allbinary/canvas/Processor.h"
#if __has_include("org/allbinary/game/input/PlayerGameInputCompositeInterface.h")
#include "org/allbinary/game/input/PlayerGameInputCompositeInterface.h"
#endif

@interface FormPlayerGameInputProcessor : Processor {
@public
    PlayerGameInputCompositeInterface* playerGameInputCompositeInterface;
}
- (instancetype) init:(PlayerGameInputCompositeInterface*)playerGameInputCompositeInterface;
- (void) initFields;
- (void) process;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FormPlayerGameInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_FORMPLAYERGAMEINPUTPROCESSOR_H
