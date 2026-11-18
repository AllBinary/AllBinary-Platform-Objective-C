#ifndef JAVAX_MICROEDITION_KHRONOS_OPENGLES_GL11_H
#define JAVAX_MICROEDITION_KHRONOS_OPENGLES_GL11_H
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
@class GL11;
#include "java/nio/Buffer.h"
#include "java/nio/FloatBuffer.h"
#include "java/nio/IntBuffer.h"
#include "javax/microedition/khronos/opengles/GL10.h"

@protocol GL11 <GL10>
- (void) glBindBuffer:(int32_t)target :(int32_t)buffer;
- (void) glBufferData:(int32_t)target :(int32_t)size :(Buffer*)data :(int32_t)usage;
- (void) glBufferSubData:(int32_t)target :(int32_t)offset :(int32_t)size :(Buffer*)data;
- (void) glClipPlanef:(int32_t)plane :(float*)equation :(int32_t)offset;
- (void) glClipPlanef:(int32_t)plane :(FloatBuffer*)equation;
- (void) glColor4ub:(int8_t)red :(int8_t)green :(int8_t)blue :(int8_t)alpha;
- (void) glColorPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(int32_t)offset;
- (void) glDeleteBuffers:(int32_t)n :(int32_t*)buffers :(int32_t)offset;
- (void) glDeleteBuffers:(int32_t)n :(IntBuffer*)buffers;
- (void) glDrawElements:(int32_t)mode :(int32_t)count :(int32_t)type :(int32_t)offset;
- (void) glGenBuffers:(int32_t)n :(int32_t*)buffers :(int32_t)offset;
- (void) glGenBuffers:(int32_t)n :(IntBuffer*)buffers;
- (void) glGetBufferParameteriv:(int32_t)target :(int32_t)pname :(int32_t*)params :(int32_t)offset;
- (void) glGetBufferParameteriv:(int32_t)target :(int32_t)pname :(IntBuffer*)params;
- (void) glGetClipPlanef:(int32_t)pname :(float*)eqn :(int32_t)offset;
- (void) glGetClipPlanef:(int32_t)pname :(FloatBuffer*)eqn;
- (void) glGetFloatv:(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glGetFloatv:(int32_t)pname :(FloatBuffer*)params;
- (void) glGetLightfv:(int32_t)light :(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glGetLightfv:(int32_t)light :(int32_t)pname :(FloatBuffer*)params;
- (void) glGetMaterialfv:(int32_t)face :(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glGetMaterialfv:(int32_t)face :(int32_t)pname :(FloatBuffer*)params;
- (void) glGetTexEnviv:(int32_t)env :(int32_t)pname :(int32_t*)params :(int32_t)offset;
- (void) glGetTexEnviv:(int32_t)env :(int32_t)pname :(IntBuffer*)params;
- (void) glGetTexParameterfv:(int32_t)target :(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glGetTexParameterfv:(int32_t)target :(int32_t)pname :(FloatBuffer*)params;
- (void) glGetTexParameteriv:(int32_t)target :(int32_t)pname :(int32_t*)params :(int32_t)offset;
- (void) glGetTexParameteriv:(int32_t)target :(int32_t)pname :(IntBuffer*)params;
- (bool) glIsBuffer:(int32_t)buffer;
- (bool) glIsEnabled:(int32_t)cap;
- (bool) glIsTexture:(int32_t)texture;
- (void) glNormalPointer:(int32_t)type :(int32_t)stride :(int32_t)offset;
- (void) glPointParameterf:(int32_t)pname :(float)param;
- (void) glPointParameterfv:(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glPointParameterfv:(int32_t)pname :(FloatBuffer*)params;
- (void) glTexCoordPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(int32_t)offset;
- (void) glTexEnvi:(int32_t)target :(int32_t)pname :(int32_t)param;
- (void) glTexEnviv:(int32_t)target :(int32_t)pname :(int32_t*)params :(int32_t)offset;
- (void) glTexEnviv:(int32_t)target :(int32_t)pname :(IntBuffer*)params;
- (void) glTexParameterfv:(int32_t)target :(int32_t)pname :(float*)params :(int32_t)offset;
- (void) glTexParameterfv:(int32_t)target :(int32_t)pname :(FloatBuffer*)params;
- (void) glTexParameteriv:(int32_t)target :(int32_t)pname :(int32_t*)params :(int32_t)offset;
- (void) glTexParameteriv:(int32_t)target :(int32_t)pname :(IntBuffer*)params;
- (void) glVertexPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(int32_t)offset;
@end

static constexpr int32_t GL11_GL_ACTIVE_TEXTURE = 34016;
static constexpr int32_t GL11_GL_ADD_SIGNED = 34164;
static constexpr int32_t GL11_GL_ALPHA_SCALE = 3356;
static constexpr int32_t GL11_GL_ALPHA_TEST_FUNC = 3009;
static constexpr int32_t GL11_GL_ALPHA_TEST_REF = 3010;
static constexpr int32_t GL11_GL_ARRAY_BUFFER = 34962;
static constexpr int32_t GL11_GL_ARRAY_BUFFER_BINDING = 34964;
static constexpr int32_t GL11_GL_BLEND_DST = 3040;
static constexpr int32_t GL11_GL_BLEND_SRC = 3041;
static constexpr int32_t GL11_GL_BUFFER_ACCESS = 35003;
static constexpr int32_t GL11_GL_BUFFER_SIZE = 34660;
static constexpr int32_t GL11_GL_BUFFER_USAGE = 34661;
static constexpr int32_t GL11_GL_CLIENT_ACTIVE_TEXTURE = 34017;
static constexpr int32_t GL11_GL_CLIP_PLANE0 = 12288;
static constexpr int32_t GL11_GL_CLIP_PLANE1 = 12289;
static constexpr int32_t GL11_GL_CLIP_PLANE2 = 12290;
static constexpr int32_t GL11_GL_CLIP_PLANE3 = 12291;
static constexpr int32_t GL11_GL_CLIP_PLANE4 = 12292;
static constexpr int32_t GL11_GL_CLIP_PLANE5 = 12293;
static constexpr int32_t GL11_GL_COLOR_ARRAY_BUFFER_BINDING = 34968;
static constexpr int32_t GL11_GL_COLOR_ARRAY_POINTER = 32912;
static constexpr int32_t GL11_GL_COLOR_ARRAY_SIZE = 32897;
static constexpr int32_t GL11_GL_COLOR_ARRAY_STRIDE = 32899;
static constexpr int32_t GL11_GL_COLOR_ARRAY_TYPE = 32898;
static constexpr int32_t GL11_GL_COLOR_CLEAR_VALUE = 3106;
static constexpr int32_t GL11_GL_COLOR_WRITEMASK = 3107;
static constexpr int32_t GL11_GL_COMBINE = 34160;
static constexpr int32_t GL11_GL_COMBINE_ALPHA = 34162;
static constexpr int32_t GL11_GL_COMBINE_RGB = 34161;
static constexpr int32_t GL11_GL_CONSTANT = 34166;
static constexpr int32_t GL11_GL_COORD_REPLACE_OES = 34914;
static constexpr int32_t GL11_GL_CULL_FACE_MODE = 2885;
static constexpr int32_t GL11_GL_CURRENT_COLOR = 2816;
static constexpr int32_t GL11_GL_CURRENT_NORMAL = 2818;
static constexpr int32_t GL11_GL_CURRENT_TEXTURE_COORDS = 2819;
static constexpr int32_t GL11_GL_DEPTH_CLEAR_VALUE = 2931;
static constexpr int32_t GL11_GL_DEPTH_FUNC = 2932;
static constexpr int32_t GL11_GL_DEPTH_RANGE = 2928;
static constexpr int32_t GL11_GL_DEPTH_WRITEMASK = 2930;
static constexpr int32_t GL11_GL_DOT3_RGB = 34478;
static constexpr int32_t GL11_GL_DOT3_RGBA = 34479;
static constexpr int32_t GL11_GL_DYNAMIC_DRAW = 35048;
static constexpr int32_t GL11_GL_ELEMENT_ARRAY_BUFFER = 34963;
static constexpr int32_t GL11_GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965;
static constexpr int32_t GL11_GL_FRONT_FACE = 2886;
static constexpr int32_t GL11_GL_GENERATE_MIPMAP = 33169;
static constexpr int32_t GL11_GL_GENERATE_MIPMAP_HINT = 33170;
static constexpr int32_t GL11_GL_INTERPOLATE = 34165;
static constexpr int32_t GL11_GL_LINE_WIDTH = 2849;
static constexpr int32_t GL11_GL_LOGIC_OP_MODE = 3056;
static constexpr int32_t GL11_GL_MATRIX_MODE = 2976;
static constexpr int32_t GL11_GL_MAX_CLIP_PLANES = 3378;
static constexpr int32_t GL11_GL_MODELVIEW_MATRIX = 2982;
static constexpr int32_t GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = 35213;
static constexpr int32_t GL11_GL_MODELVIEW_STACK_DEPTH = 2979;
static constexpr int32_t GL11_GL_NORMAL_ARRAY_BUFFER_BINDING = 34967;
static constexpr int32_t GL11_GL_NORMAL_ARRAY_POINTER = 32911;
static constexpr int32_t GL11_GL_NORMAL_ARRAY_STRIDE = 32895;
static constexpr int32_t GL11_GL_NORMAL_ARRAY_TYPE = 32894;
static constexpr int32_t GL11_GL_OPERAND0_ALPHA = 34200;
static constexpr int32_t GL11_GL_OPERAND0_RGB = 34192;
static constexpr int32_t GL11_GL_OPERAND1_ALPHA = 34201;
static constexpr int32_t GL11_GL_OPERAND1_RGB = 34193;
static constexpr int32_t GL11_GL_OPERAND2_ALPHA = 34202;
static constexpr int32_t GL11_GL_OPERAND2_RGB = 34194;
static constexpr int32_t GL11_GL_POINT_DISTANCE_ATTENUATION = 33065;
static constexpr int32_t GL11_GL_POINT_FADE_THRESHOLD_SIZE = 33064;
static constexpr int32_t GL11_GL_POINT_SIZE = 2833;
static constexpr int32_t GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = 35743;
static constexpr int32_t GL11_GL_POINT_SIZE_ARRAY_OES = 35740;
static constexpr int32_t GL11_GL_POINT_SIZE_ARRAY_POINTER_OES = 35212;
static constexpr int32_t GL11_GL_POINT_SIZE_ARRAY_STRIDE_OES = 35211;
static constexpr int32_t GL11_GL_POINT_SIZE_ARRAY_TYPE_OES = 35210;
static constexpr int32_t GL11_GL_POINT_SIZE_MAX = 33063;
static constexpr int32_t GL11_GL_POINT_SIZE_MIN = 33062;
static constexpr int32_t GL11_GL_POINT_SPRITE_OES = 34913;
static constexpr int32_t GL11_GL_POLYGON_OFFSET_FACTOR = 32824;
static constexpr int32_t GL11_GL_POLYGON_OFFSET_UNITS = 10752;
static constexpr int32_t GL11_GL_PREVIOUS = 34168;
static constexpr int32_t GL11_GL_PRIMARY_COLOR = 34167;
static constexpr int32_t GL11_GL_PROJECTION_MATRIX = 2983;
static constexpr int32_t GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = 35214;
static constexpr int32_t GL11_GL_PROJECTION_STACK_DEPTH = 2980;
static constexpr int32_t GL11_GL_RGB_SCALE = 34163;
static constexpr int32_t GL11_GL_SAMPLE_BUFFERS = 32936;
static constexpr int32_t GL11_GL_SAMPLE_COVERAGE_INVERT = 32939;
static constexpr int32_t GL11_GL_SAMPLE_COVERAGE_VALUE = 32938;
static constexpr int32_t GL11_GL_SAMPLES = 32937;
static constexpr int32_t GL11_GL_SCISSOR_BOX = 3088;
static constexpr int32_t GL11_GL_SHADE_MODEL = 2900;
static constexpr int32_t GL11_GL_SRC0_ALPHA = 34184;
static constexpr int32_t GL11_GL_SRC0_RGB = 34176;
static constexpr int32_t GL11_GL_SRC1_ALPHA = 34185;
static constexpr int32_t GL11_GL_SRC1_RGB = 34177;
static constexpr int32_t GL11_GL_SRC2_ALPHA = 34186;
static constexpr int32_t GL11_GL_SRC2_RGB = 34178;
static constexpr int32_t GL11_GL_STATIC_DRAW = 35044;
static constexpr int32_t GL11_GL_STENCIL_CLEAR_VALUE = 2961;
static constexpr int32_t GL11_GL_STENCIL_FAIL = 2964;
static constexpr int32_t GL11_GL_STENCIL_FUNC = 2962;
static constexpr int32_t GL11_GL_STENCIL_PASS_DEPTH_FAIL = 2965;
static constexpr int32_t GL11_GL_STENCIL_PASS_DEPTH_PASS = 2966;
static constexpr int32_t GL11_GL_STENCIL_REF = 2967;
static constexpr int32_t GL11_GL_STENCIL_VALUE_MASK = 2963;
static constexpr int32_t GL11_GL_STENCIL_WRITEMASK = 2968;
static constexpr int32_t GL11_GL_SUBTRACT = 34023;
static constexpr int32_t GL11_GL_TEXTURE_BINDING_2D = 32873;
static constexpr int32_t GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970;
static constexpr int32_t GL11_GL_TEXTURE_COORD_ARRAY_POINTER = 32914;
static constexpr int32_t GL11_GL_TEXTURE_COORD_ARRAY_SIZE = 32904;
static constexpr int32_t GL11_GL_TEXTURE_COORD_ARRAY_STRIDE = 32906;
static constexpr int32_t GL11_GL_TEXTURE_COORD_ARRAY_TYPE = 32905;
static constexpr int32_t GL11_GL_TEXTURE_MATRIX = 2984;
static constexpr int32_t GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = 35215;
static constexpr int32_t GL11_GL_TEXTURE_STACK_DEPTH = 2981;
static constexpr int32_t GL11_GL_VERTEX_ARRAY_BUFFER_BINDING = 34966;
static constexpr int32_t GL11_GL_VERTEX_ARRAY_POINTER = 32910;
static constexpr int32_t GL11_GL_VERTEX_ARRAY_SIZE = 32890;
static constexpr int32_t GL11_GL_VERTEX_ARRAY_STRIDE = 32892;
static constexpr int32_t GL11_GL_VERTEX_ARRAY_TYPE = 32891;
static constexpr int32_t GL11_GL_VIEWPORT = 2978;
static constexpr int32_t GL11_GL_WRITE_ONLY = 35001;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GL11_staticInit(void);


#endif // JAVAX_MICROEDITION_KHRONOS_OPENGLES_GL11_H
