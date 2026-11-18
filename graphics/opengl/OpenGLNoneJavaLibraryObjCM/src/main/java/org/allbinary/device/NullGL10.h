#ifndef ORG_ALLBINARY_DEVICE_NULLGL10_H
#define ORG_ALLBINARY_DEVICE_NULLGL10_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.device

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullGL10;
@class GL10;
@class StringUtil;
#include "javax/microedition/khronos/opengles/GL10.h"
#include "java/nio/Buffer.h"
#include "java/nio/FloatBuffer.h"
#include "java/nio/IntBuffer.h"

@interface NullGL10 : ABObject <GL10> {
@public
}
- (instancetype) init;
- (void) glActiveTexture:(int32_t)texture;
- (void) glAlphaFunc:(int32_t)func :(float)ref;
- (void) glBindTexture:(int32_t)target :(int32_t)texture;
- (void) glBlendFunc:(int32_t)sfactor :(int32_t)dfactor;
- (void) glClear:(int32_t)mask;
- (void) glClearColor:(float)red :(float)green :(float)blue :(float)alpha;
- (void) glClearDepthf:(float)depth;
- (void) glClearStencil:(int32_t)s;
- (void) glClientActiveTexture:(int32_t)texture;
- (void) glColor4f:(float)red :(float)green :(float)blue :(float)alpha;
- (void) glColorMask:(bool)red :(bool)green :(bool)blue :(bool)alpha;
- (void) glColorPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(Buffer*)pointer;
- (void) glCompressedTexImage2D:(int32_t)target :(int32_t)level :(int32_t)internalformat :(int32_t)width :(int32_t)height :(int32_t)border :(int32_t)imageSize :(Buffer*)data;
- (void) glCompressedTexSubImage2D:(int32_t)target :(int32_t)level :(int32_t)xoffset :(int32_t)yoffset :(int32_t)width :(int32_t)height :(int32_t)format :(int32_t)imageSize :(Buffer*)data;
- (void) glCopyTexImage2D:(int32_t)target :(int32_t)level :(int32_t)internalformat :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height :(int32_t)border;
- (void) glCopyTexSubImage2D:(int32_t)target :(int32_t)level :(int32_t)xoffset :(int32_t)yoffset :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height;
- (void) glCullFace:(int32_t)mode;
- (void) glDeleteTextures:(int32_t)n :(int32_t*)textures :(int32_t)offset;
- (void) glDeleteTextures:(int32_t)n :(IntBuffer*)textures;
- (void) glDepthFunc:(int32_t)func;
- (void) glDepthMask:(bool)flag;
- (void) glDepthRangef:(float)zNear :(float)zFar;
- (void) glDisable:(int32_t)cap;
- (void) glDisableClientState:(int32_t)array;
- (void) glDrawArrays:(int32_t)mode :(int32_t)first :(int32_t)count;
- (void) glDrawElements:(int32_t)mode :(int32_t)count :(int32_t)type :(Buffer*)indices;
- (void) glEnable:(int32_t)cap;
- (void) glEnableClientState:(int32_t)array;
- (void) glFinish;
- (void) glFlush;
- (void) glFogf:(int32_t)pname :(float)param;
- (void) glFogfv:(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glFogfv:(int32_t)pname :(FloatBuffer*)params;
- (void) glFrontFace:(int32_t)mode;
- (void) glFrustumf:(float)left :(float)right :(float)bottom :(float)top :(float)zNear :(float)zFar;
- (void) glGenTextures:(int32_t)n :(int32_t*)textures :(int32_t)offset;
- (void) glGenTextures:(int32_t)n :(IntBuffer*)textures;
- (int32_t) glGetError;
- (void) glGetIntegerv:(int32_t)pname :(int32_t*)params :(int32_t)offset;
- (void) glGetIntegerv:(int32_t)pname :(IntBuffer*)params;
- (const char*) glGetString:(int32_t)name;
- (void) glHint:(int32_t)target :(int32_t)mode;
- (void) glLightModelf:(int32_t)pname :(float)param;
- (void) glLightModelfv:(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glLightModelfv:(int32_t)pname :(FloatBuffer*)params;
- (void) glLightf:(int32_t)light :(int32_t)pname :(float)param;
- (void) glLightfv:(int32_t)light :(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glLightfv:(int32_t)light :(int32_t)pname :(FloatBuffer*)params;
- (void) glLineWidth:(float)width;
- (void) glLoadIdentity;
- (void) glLoadMatrixf:(float*)m :(int32_t)offset;
- (void) glLoadMatrixf:(FloatBuffer*)m;
- (void) glLogicOp:(int32_t)opcode;
- (void) glMaterialf:(int32_t)face :(int32_t)pname :(float)param;
- (void) glMaterialfv:(int32_t)face :(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glMaterialfv:(int32_t)face :(int32_t)pname :(FloatBuffer*)params;
- (void) glMatrixMode:(int32_t)mode;
- (void) glMultMatrixf:(float*)m :(int32_t)offset;
- (void) glMultMatrixf:(FloatBuffer*)m;
- (void) glMultiTexCoord4f:(int32_t)target :(float)s :(float)t :(float)r :(float)q;
- (void) glNormal3f:(float)nx :(float)ny :(float)nz;
- (void) glNormalPointer:(int32_t)type :(int32_t)stride :(Buffer*)pointer;
- (void) glOrthof:(float)left :(float)right :(float)bottom :(float)top :(float)zNear :(float)zFar;
- (void) glPixelStorei:(int32_t)pname :(int32_t)param;
- (void) glPointSize:(float)size;
- (void) glPolygonOffset:(float)factor :(float)units;
- (void) glPopMatrix;
- (void) glPushMatrix;
- (void) glReadPixels:(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height :(int32_t)format :(int32_t)type :(Buffer*)pixels;
- (void) glRotatef:(float)angle :(float)x :(float)y :(float)z;
- (void) glRotatex:(int32_t)angle :(int32_t)x :(int32_t)y :(int32_t)z;
- (void) glSampleCoverage:(float)value :(bool)invert;
- (void) glScalef:(float)x :(float)y :(float)z;
- (void) glScalex:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) glScissor:(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height;
- (void) glShadeModel:(int32_t)mode;
- (void) glStencilFunc:(int32_t)func :(int32_t)ref :(int32_t)mask;
- (void) glStencilMask:(int32_t)mask;
- (void) glStencilOp:(int32_t)fail :(int32_t)zfail :(int32_t)zpass;
- (void) glTexCoordPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(Buffer*)pointer;
- (void) glTexEnvf:(int32_t)target :(int32_t)pname :(float)param;
- (void) glTexEnvfv:(int32_t)target :(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glTexEnvfv:(int32_t)target :(int32_t)pname :(FloatBuffer*)params;
- (void) glTexImage2D:(int32_t)target :(int32_t)level :(int32_t)internalformat :(int32_t)width :(int32_t)height :(int32_t)border :(int32_t)format :(int32_t)type :(Buffer*)pixels;
- (void) glTexParameterf:(int32_t)target :(int32_t)pname :(float)param;
- (void) glTexParameteri:(int32_t)target :(int32_t)pname :(int32_t)param;
- (void) glTexSubImage2D:(int32_t)target :(int32_t)level :(int32_t)xoffset :(int32_t)yoffset :(int32_t)width :(int32_t)height :(int32_t)format :(int32_t)type :(Buffer*)pixels;
- (void) glTranslatef:(float)x :(float)y :(float)z;
- (void) glVertexPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(Buffer*)pointer;
- (void) glViewport:(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height;
- (void) glBegin:(int32_t)i;
- (void) glEnd;
- (void) glVertex3f:(float)f :(float)f2 :(float)f3;
- (void) glPolygonMode:(int32_t)i :(int32_t)i1;
@end

extern NullGL10* NullGL10_NULL_GL10;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullGL10_staticInit(void);


#endif // ORG_ALLBINARY_DEVICE_NULLGL10_H
