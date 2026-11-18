#ifndef JAVAX_MICROEDITION_LCDUI_NULLCOMMANDLISTENER_H
#define JAVAX_MICROEDITION_LCDUI_NULLCOMMANDLISTENER_H
// Generated Code Do Not Modify
// package javax.microedition.lcdui

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullCommandListener;
@class CommandListener;
@class Command;
@class Displayable;
#include "javax/microedition/lcdui/CommandListener.h"

@interface NullCommandListener : ABObject <CommandListener> {
@public
}
- (instancetype) init;
- (void) commandAction:(Command*)c :(Displayable*)d;
@end

extern NullCommandListener* NullCommandListener_NULL_COMMAND_LISTENER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullCommandListener_staticInit(void);


#endif // JAVAX_MICROEDITION_LCDUI_NULLCOMMANDLISTENER_H
