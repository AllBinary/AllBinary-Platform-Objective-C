#ifndef ORG_ALLBINARY_VIEW_ALLBINARYMIDLETVIEWINTERFACE_H
#define ORG_ALLBINARY_VIEW_ALLBINARYMIDLETVIEWINTERFACE_H
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
@class AllBinaryMidletViewInterface;
@class GameInitializedListenerInterface;
@class DemoGameMidletEventListener;
@class MidletCompositeInterface;
@class EmulatorViewInterface;
#include "org/allbinary/game/configuration/event/GameInitializedListenerInterface.h"
#include "org/allbinary/game/midlet/DemoGameMidletEventListener.h"
#include "org/allbinary/midlet/MidletCompositeInterface.h"
#include "org/allbinary/view/EmulatorViewInterface.h"

@protocol AllBinaryMidletViewInterface <MidletCompositeInterface, EmulatorViewInterface, DemoGameMidletEventListener, GameInitializedListenerInterface>
- (void) onResume;
- (void) onPause;
- (void) onDestroy;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryMidletViewInterface_staticInit(void);


#endif // ORG_ALLBINARY_VIEW_ALLBINARYMIDLETVIEWINTERFACE_H
