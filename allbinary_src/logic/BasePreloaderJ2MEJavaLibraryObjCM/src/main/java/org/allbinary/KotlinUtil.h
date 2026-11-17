#ifndef ORG_ALLBINARY_KOTLINUTIL_H
#define ORG_ALLBINARY_KOTLINUTIL_H
// Generated Code Do Not Modify
// package org.allbinary

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class KotlinUtil;
@class StringUtil;

@interface KotlinUtil : ABObject {
@public
}
- (instancetype) init;
+ (bool) isKotlin;
+ (const char*) getShortName;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void KotlinUtil_staticInit(void);


#endif // ORG_ALLBINARY_KOTLINUTIL_H
