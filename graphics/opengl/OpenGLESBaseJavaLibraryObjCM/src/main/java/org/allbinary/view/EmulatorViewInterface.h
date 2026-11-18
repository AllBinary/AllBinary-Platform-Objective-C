#ifndef ORG_ALLBINARY_VIEW_EMULATORVIEWINTERFACE_H
#define ORG_ALLBINARY_VIEW_EMULATORVIEWINTERFACE_H
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
@class EmulatorViewInterface;
@class Displayable;
@class MIDlet;

@protocol EmulatorViewInterface
- (void) setMidlet:(MIDlet*)midlet;
- (void) onEmulatorInitComplete:(id)midletActivity;
- (void) onSetDisplayable:(Displayable*)displayable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void EmulatorViewInterface_staticInit(void);


#endif // ORG_ALLBINARY_VIEW_EMULATORVIEWINTERFACE_H
