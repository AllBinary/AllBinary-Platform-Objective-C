#ifndef ORG_ALLBINARY_MIDLET_ALLBINARYMIDLET_H
#define ORG_ALLBINARY_MIDLET_ALLBINARYMIDLET_H
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
// package org.allbinary.midlet

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllBinaryMidlet;
@class Command;
@class CommandListener;
@class Display;
@class Displayable;
@class NullCanvas;
@class MIDlet;
@class MIDletStateChangeException;
@class StdUtil;
@class ForcedLogUtil;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;
@class EventStrings;
@class CommonLabels;
@class CommonStrings;
@class Memory;
@class NullUtil;
@class ABHashtable;
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/midlet/MIDlet.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

@interface AllBinaryMidlet : MIDlet <CommandListener> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    const char* SET_DISPLAY;
    const char* SETTING_;
    const char* _DISPLAY__;
    const char* SETTING_NO_TITLE;
    ABHashtable* hashtable;
    bool midletDestroyed;
}
- (instancetype) init;
- (void) initFields;
+ (AllBinaryMidlet*) getNullInstance;
- (void) setDisplay:(Displayable*)newDisplay;
- (Display*) getDisplay;
- (Displayable*) getCurrentDisplayable;
- (void) setDestroyed:(bool)destroyed;
- (bool) isDestroyed;
- (void) startApp;
- (void) pauseApp;
- (void) destroyAppInRunnable:(bool)unconditional :(bool)isProgress;
- (void) destroyApp:(bool)unconditional;
- (void) setStartStateHashtable:(ABHashtable*)hashtable;
- (ABHashtable*) getStartStateHashtable;
- (ABHashtable*) getCurrentStateHashtable;
- (void) commandAction:(Command*)command :(Displayable*)displayable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryMidlet_staticInit(void);

#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Displayable.h")
#include "javax/microedition/lcdui/Displayable.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_MIDLET_ALLBINARYMIDLET_H
