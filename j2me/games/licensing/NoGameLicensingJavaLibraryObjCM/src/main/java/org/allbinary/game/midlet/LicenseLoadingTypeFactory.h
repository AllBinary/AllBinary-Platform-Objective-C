#ifndef ORG_ALLBINARY_GAME_MIDLET_LICENSELOADINGTYPEFACTORY_H
#define ORG_ALLBINARY_GAME_MIDLET_LICENSELOADINGTYPEFACTORY_H
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
// package org.allbinary.game.midlet

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LicenseLoadingTypeFactory;
@class LicenseLoadingType;
#if __has_include("org/allbinary/game/midlet/LicenseLoadingType.h")
#include "org/allbinary/game/midlet/LicenseLoadingType.h"
#endif

@interface LicenseLoadingTypeFactory : ABObject {
@public
    LicenseLoadingType* INITIAL_LOADING;
    LicenseLoadingType* GAME_START;
    LicenseLoadingType* LOGIN;
    LicenseLoadingType* OTHER;
}
- (instancetype) init;
- (void) initFields;
+ (LicenseLoadingTypeFactory*) getIntance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LicenseLoadingTypeFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_MIDLET_LICENSELOADINGTYPEFACTORY_H
