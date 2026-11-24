#ifndef JAVAX_MICROEDITION_KHRONOS_OPENGLES_GL11EXT_H
#define JAVAX_MICROEDITION_KHRONOS_OPENGLES_GL11EXT_H
// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GL11Ext;
@class GL;
#include "java/nio/Buffer.h"
#include "java/nio/FloatBuffer.h"
#include "java/nio/IntBuffer.h"
#include "java/nio/ShortBuffer.h"
#include "javax/microedition/khronos/opengles/GL.h"

@protocol GL11Ext <GL>
- (void) glTexParameterfv:(int32_t)target :(int32_t)pname :(float*)param :(int32_t)offset;
- (void) glCurrentPaletteMatrixOES:(int32_t)matrixpaletteindex;
- (void) glDrawTexfOES:(float)x :(float)y :(float)z :(float)width :(float)height;
- (void) glDrawTexfvOES:(float*)coords :(int32_t)offset;
- (void) glDrawTexfvOES:(FloatBuffer*)coords;
- (void) glDrawTexiOES:(int32_t)x :(int32_t)y :(int32_t)z :(int32_t)width :(int32_t)height;
- (void) glDrawTexivOES:(int32_t*)coords :(int32_t)offset;
- (void) glDrawTexivOES:(IntBuffer*)coords;
- (void) glDrawTexsOES:(int16_t)x :(int16_t)y :(int16_t)z :(int16_t)width :(int16_t)height;
- (void) glDrawTexsvOES:(int16_t*)coords :(int32_t)offset;
- (void) glDrawTexsvOES:(ShortBuffer*)coords;
- (void) glDrawTexxOES:(int32_t)x :(int32_t)y :(int32_t)z :(int32_t)width :(int32_t)height;
- (void) glDrawTexxvOES:(int32_t*)coords :(int32_t)offset;
- (void) glDrawTexxvOES:(IntBuffer*)coords;
- (void) glEnable:(int32_t)cap;
- (void) glEnableClientState:(int32_t)array;
- (void) glLoadPaletteFromModelViewMatrixOES;
- (void) glMatrixIndexPointerOES:(int32_t)size :(int32_t)type :(int32_t)stride :(Buffer*)pointer;
- (void) glMatrixIndexPointerOES_2:(int32_t)size :(int32_t)type :(int32_t)stride :(int32_t)offset;
- (void) glWeightPointerOES:(int32_t)size :(int32_t)type :(int32_t)stride :(Buffer*)pointer;
- (void) glWeightPointerOES_2:(int32_t)size :(int32_t)type :(int32_t)stride :(int32_t)offset;
@end

static constexpr int32_t GL11Ext_GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = 35742;
static constexpr int32_t GL11Ext_GL_MATRIX_INDEX_ARRAY_OES = 34884;
static constexpr int32_t GL11Ext_GL_MATRIX_INDEX_ARRAY_POINTER_OES = 34889;
static constexpr int32_t GL11Ext_GL_MATRIX_INDEX_ARRAY_SIZE_OES = 34886;
static constexpr int32_t GL11Ext_GL_MATRIX_INDEX_ARRAY_STRIDE_OES = 34888;
static constexpr int32_t GL11Ext_GL_MATRIX_INDEX_ARRAY_TYPE_OES = 34887;
static constexpr int32_t GL11Ext_GL_MATRIX_PALETTE_OES = 34880;
static constexpr int32_t GL11Ext_GL_MAX_PALETTE_MATRICES_OES = 34882;
static constexpr int32_t GL11Ext_GL_MAX_VERTEX_UNITS_OES = 34468;
static constexpr int32_t GL11Ext_GL_TEXTURE_CROP_RECT_OES = 35741;
static constexpr int32_t GL11Ext_GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = 34974;
static constexpr int32_t GL11Ext_GL_WEIGHT_ARRAY_OES = 34477;
static constexpr int32_t GL11Ext_GL_WEIGHT_ARRAY_POINTER_OES = 34476;
static constexpr int32_t GL11Ext_GL_WEIGHT_ARRAY_SIZE_OES = 34475;
static constexpr int32_t GL11Ext_GL_WEIGHT_ARRAY_STRIDE_OES = 34474;
static constexpr int32_t GL11Ext_GL_WEIGHT_ARRAY_TYPE_OES = 34473;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GL11Ext_staticInit(void);


#endif // JAVAX_MICROEDITION_KHRONOS_OPENGLES_GL11EXT_H
