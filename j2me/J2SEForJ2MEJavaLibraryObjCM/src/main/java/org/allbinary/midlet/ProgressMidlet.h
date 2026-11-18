#ifndef ORG_ALLBINARY_MIDLET_PROGRESSMIDLET_H
#define ORG_ALLBINARY_MIDLET_PROGRESSMIDLET_H
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
@class ProgressMidlet;
@class Processor;
@class AbeClientInformationInterface;
@class ClientInformationFactory;
@class PrimaryThreadPool;
@class ThreadPool;
@class AllBinaryMidlet;
@class MidletExitProcessorFactory;
@class ExitRunnable;
#if __has_include("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h")
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#endif
#include "java/lang/Runnable.h"
#include "org/allbinary/midlet/AllBinaryMidlet.h"

//J2SEForJ2ME
@interface ProgressMidlet : AllBinaryMidlet {
@public
    AbeClientInformationInterface* abeClientInformation;
}
- (instancetype) init:(ClientInformationFactory*)clientInformationFactory;
- (void) initFields;
- (void) preInit;
- (void) exitProgress:(bool)isProgress;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ProgressMidlet_staticInit(void);


#endif // ORG_ALLBINARY_MIDLET_PROGRESSMIDLET_H
