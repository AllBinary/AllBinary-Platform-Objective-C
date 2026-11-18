#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_LOCKEDFEATURENOTIFICATIONUTIL_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_LOCKEDFEATURENOTIFICATIONUTIL_H
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
// package org.allbinary.logic.system.security.licensing

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LockedFeatureNotificationUtil;
@class GameNotificationEvent;
@class GameNotificationEventHandler;
@class BasicColor;
@class BasicColorFactory;
@class BooleanFactory;
@class SmallIntegerSingletonFactory;
@class ErrorSound;
@class PrimaryPlayerQueueFactory;
@class LicenseStrings;
#if __has_include("org/allbinary/game/layer/hud/event/GameNotificationEvent.h")
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"
#endif

@interface LockedFeatureNotificationUtil : ABObject {
@public
    GameNotificationEvent* gameNotificationEvent;
}
- (instancetype) init;
- (void) initFields;
+ (LockedFeatureNotificationUtil*) getInstance;
- (void) fire;
- (void) fireWithColor:(BasicColor*)basicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LockedFeatureNotificationUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_LOCKEDFEATURENOTIFICATIONUTIL_H
