#ifndef ORG_BOUNCYCASTLE_JCE_PROVIDER_BOUNCYCASTLEPROVIDER_H
#define ORG_BOUNCYCASTLE_JCE_PROVIDER_BOUNCYCASTLEPROVIDER_H
// Generated Code Do Not Modify
// package org.bouncycastle.jce.provider

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BouncyCastleProvider;
#include "java/security/Provider.h"

@interface BouncyCastleProvider : Provider {
@public
}
- (instancetype) init;
- (void) setParameter:(const char*)parameterName :(id)parameter;
@end

extern const char* BouncyCastleProvider_PROVIDER_NAME;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BouncyCastleProvider_staticInit(void);


#endif // ORG_BOUNCYCASTLE_JCE_PROVIDER_BOUNCYCASTLEPROVIDER_H
