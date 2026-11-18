#ifndef ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_GAMEADSTATEFACTORY_H
#define ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_GAMEADSTATEFACTORY_H
// Generated Code Do Not Modify
// package org.allbinary.business.advertisement

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameAdStateFactory;
@class GameAdState;
@class SoftwareInformation;
@class GameAdStateFactoryInterface;
@class AppNameLicensingAdConfiguration;
@class GameAdStateBase;
#if __has_include("org/allbinary/game/GameAdState.h")
#include "org/allbinary/game/GameAdState.h"
#endif
#include "org/allbinary/business/advertisement/GameAdStateFactoryInterface.h"

@interface GameAdStateFactory : ABObject <GameAdStateFactoryInterface> {
@public
    GameAdState** gameAdStateArray;
    GameAdState* gameAdState;
}
- (instancetype) init;
- (void) initFields;
+ (GameAdStateFactory*) getInstance;
- (GameAdState*) getCurrentInstance;
- (GameAdStateBase*) getInstanceForApp:(SoftwareInformation*)softwareInformation;
- (bool) isEnabled;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameAdStateFactory_staticInit(void);

#if __has_include("org/allbinary/game/GameAdState.h")
#include "org/allbinary/game/GameAdState.h"
#endif

#endif // ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_GAMEADSTATEFACTORY_H
