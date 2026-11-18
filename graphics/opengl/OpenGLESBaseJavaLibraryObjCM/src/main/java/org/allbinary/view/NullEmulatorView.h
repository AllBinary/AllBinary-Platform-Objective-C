#ifndef ORG_ALLBINARY_VIEW_NULLEMULATORVIEW_H
#define ORG_ALLBINARY_VIEW_NULLEMULATORVIEW_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.view

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullEmulatorView;
@class Displayable;
@class MIDlet;
@class EmulatorViewInterface;
#include "org/allbinary/view/EmulatorViewInterface.h"

@interface NullEmulatorView : ABObject <EmulatorViewInterface> {
@public
}
- (instancetype) init;
- (void) setMidlet:(MIDlet*)midlet;
- (void) onEmulatorInitComplete:(id)midletActivity;
- (void) onSetDisplayable:(Displayable*)displayable;
@end

extern NullEmulatorView* NullEmulatorView_NULL_EMULATOR_VIEW;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullEmulatorView_staticInit(void);


#endif // ORG_ALLBINARY_VIEW_NULLEMULATORVIEW_H
