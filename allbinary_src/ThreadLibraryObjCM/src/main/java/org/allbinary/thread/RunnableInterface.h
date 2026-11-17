#ifndef ORG_ALLBINARY_THREAD_RUNNABLEINTERFACE_H
#define ORG_ALLBINARY_THREAD_RUNNABLEINTERFACE_H
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
// package org.allbinary.thread

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RunnableInterface;
#include "java/lang/Thread.h"
#include "java/lang/Runnable.h"

@protocol RunnableInterface <Runnable>
- (bool) isRunning;
- (void) setRunning:(bool)isRunning;
- (void) setThread:(Thread*)thread;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RunnableInterface_staticInit(void);


#endif // ORG_ALLBINARY_THREAD_RUNNABLEINTERFACE_H
