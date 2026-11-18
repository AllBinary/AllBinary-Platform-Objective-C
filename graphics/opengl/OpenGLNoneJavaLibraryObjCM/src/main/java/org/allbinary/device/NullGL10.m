// Generated Code Do Not Modify
#include "org/allbinary/device/NullGL10.h"
#include "org/allbinary/logic/string/StringUtil.h"


NullGL10* NullGL10_NULL_GL10;

void NullGL10_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullGL10_NULL_GL10 = [((NullGL10*) [NullGL10 alloc]) init];
}

@implementation NullGL10

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) glActiveTexture:(int32_t)texture {
        return;
}


- (void) glAlphaFunc:(int32_t)func :(float)ref {
        return;
}


- (void) glBindTexture:(int32_t)target :(int32_t)texture {
        return;
}


- (void) glBlendFunc:(int32_t)sfactor :(int32_t)dfactor {
        return;
}


- (void) glClear:(int32_t)mask {
        return;
}


- (void) glClearColor:(float)red :(float)green :(float)blue :(float)alpha {
        return;
}


- (void) glClearDepthf:(float)depth {
        return;
}


- (void) glClearStencil:(int32_t)s {
        return;
}


- (void) glClientActiveTexture:(int32_t)texture {
        return;
}


- (void) glColor4f:(float)red :(float)green :(float)blue :(float)alpha {
        return;
}


- (void) glColorMask:(bool)red :(bool)green :(bool)blue :(bool)alpha {
        return;
}


- (void) glColorPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(Buffer*)pointer {
        return;
}


- (void) glCompressedTexImage2D:(int32_t)target :(int32_t)level :(int32_t)internalformat :(int32_t)width :(int32_t)height :(int32_t)border :(int32_t)imageSize :(Buffer*)data {
        return;
}


- (void) glCompressedTexSubImage2D:(int32_t)target :(int32_t)level :(int32_t)xoffset :(int32_t)yoffset :(int32_t)width :(int32_t)height :(int32_t)format :(int32_t)imageSize :(Buffer*)data {
        return;
}


- (void) glCopyTexImage2D:(int32_t)target :(int32_t)level :(int32_t)internalformat :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height :(int32_t)border {
        return;
}


- (void) glCopyTexSubImage2D:(int32_t)target :(int32_t)level :(int32_t)xoffset :(int32_t)yoffset :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height {
        return;
}


- (void) glCullFace:(int32_t)mode {
        return;
}


- (void) glDeleteTextures:(int32_t)n :(int32_t*)textures :(int32_t)offset {
        return;
}


- (void) glDeleteTextures:(int32_t)n :(IntBuffer*)textures {
        return;
}


- (void) glDepthFunc:(int32_t)func {
        return;
}


- (void) glDepthMask:(bool)flag {
        return;
}


- (void) glDepthRangef:(float)zNear :(float)zFar {
        return;
}


- (void) glDisable:(int32_t)cap {
        return;
}


- (void) glDisableClientState:(int32_t)array {
        return;
}


- (void) glDrawArrays:(int32_t)mode :(int32_t)first :(int32_t)count {
        return;
}


- (void) glDrawElements:(int32_t)mode :(int32_t)count :(int32_t)type :(Buffer*)indices {
        return;
}


- (void) glEnable:(int32_t)cap {
        return;
}


- (void) glEnableClientState:(int32_t)array {
        return;
}


- (void) glFinish {
        return;
}


- (void) glFlush {
        return;
}


- (void) glFogf:(int32_t)pname :(float)param {
        return;
}


- (void) glFogfv:(int32_t)pname :(float*)params :(int32_t)offset {
        return;
}


- (void) glFogfv:(int32_t)pname :(FloatBuffer*)params {
        return;
}


- (void) glFrontFace:(int32_t)mode {
        return;
}


- (void) glFrustumf:(float)left :(float)right :(float)bottom :(float)top :(float)zNear :(float)zFar {
        return;
}


- (void) glGenTextures:(int32_t)n :(int32_t*)textures :(int32_t)offset {
        return;
}


- (void) glGenTextures:(int32_t)n :(IntBuffer*)textures {
        return;
}


- (int32_t) glGetError {
        return 0;
}


- (void) glGetIntegerv:(int32_t)pname :(int32_t*)params :(int32_t)offset {
        return;
}


- (void) glGetIntegerv:(int32_t)pname :(IntBuffer*)params {
        return;
}


- (const char*) glGetString:(int32_t)name {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (void) glHint:(int32_t)target :(int32_t)mode {
        return;
}


- (void) glLightModelf:(int32_t)pname :(float)param {
        return;
}


- (void) glLightModelfv:(int32_t)pname :(float*)params :(int32_t)offset {
        return;
}


- (void) glLightModelfv:(int32_t)pname :(FloatBuffer*)params {
        return;
}


- (void) glLightf:(int32_t)light :(int32_t)pname :(float)param {
        return;
}


- (void) glLightfv:(int32_t)light :(int32_t)pname :(float*)params :(int32_t)offset {
        return;
}


- (void) glLightfv:(int32_t)light :(int32_t)pname :(FloatBuffer*)params {
        return;
}


- (void) glLineWidth:(float)width {
        return;
}


- (void) glLoadIdentity {
        return;
}


- (void) glLoadMatrixf:(float*)m :(int32_t)offset {
        return;
}


- (void) glLoadMatrixf:(FloatBuffer*)m {
        return;
}


- (void) glLogicOp:(int32_t)opcode {
        return;
}


- (void) glMaterialf:(int32_t)face :(int32_t)pname :(float)param {
        return;
}


- (void) glMaterialfv:(int32_t)face :(int32_t)pname :(float*)params :(int32_t)offset {
        return;
}


- (void) glMaterialfv:(int32_t)face :(int32_t)pname :(FloatBuffer*)params {
        return;
}


- (void) glMatrixMode:(int32_t)mode {
        return;
}


- (void) glMultMatrixf:(float*)m :(int32_t)offset {
        return;
}


- (void) glMultMatrixf:(FloatBuffer*)m {
        return;
}


- (void) glMultiTexCoord4f:(int32_t)target :(float)s :(float)t :(float)r :(float)q {
        return;
}


- (void) glNormal3f:(float)nx :(float)ny :(float)nz {
        return;
}


- (void) glNormalPointer:(int32_t)type :(int32_t)stride :(Buffer*)pointer {
        return;
}


- (void) glOrthof:(float)left :(float)right :(float)bottom :(float)top :(float)zNear :(float)zFar {
        return;
}


- (void) glPixelStorei:(int32_t)pname :(int32_t)param {
        return;
}


- (void) glPointSize:(float)size {
        return;
}


- (void) glPolygonOffset:(float)factor :(float)units {
        return;
}


- (void) glPopMatrix {
        return;
}


- (void) glPushMatrix {
        return;
}


- (void) glReadPixels:(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height :(int32_t)format :(int32_t)type :(Buffer*)pixels {
        return;
}


- (void) glRotatef:(float)angle :(float)x :(float)y :(float)z {
        return;
}


- (void) glRotatex:(int32_t)angle :(int32_t)x :(int32_t)y :(int32_t)z {
        return;
}


- (void) glSampleCoverage:(float)value :(bool)invert {
        return;
}


- (void) glScalef:(float)x :(float)y :(float)z {
        return;
}


- (void) glScalex:(int32_t)x :(int32_t)y :(int32_t)z {
        return;
}


- (void) glScissor:(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height {
        return;
}


- (void) glShadeModel:(int32_t)mode {
        return;
}


- (void) glStencilFunc:(int32_t)func :(int32_t)ref :(int32_t)mask {
        return;
}


- (void) glStencilMask:(int32_t)mask {
        return;
}


- (void) glStencilOp:(int32_t)fail :(int32_t)zfail :(int32_t)zpass {
        return;
}


- (void) glTexCoordPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(Buffer*)pointer {
        return;
}


- (void) glTexEnvf:(int32_t)target :(int32_t)pname :(float)param {
        return;
}


- (void) glTexEnvfv:(int32_t)target :(int32_t)pname :(float*)params :(int32_t)offset {
        return;
}


- (void) glTexEnvfv:(int32_t)target :(int32_t)pname :(FloatBuffer*)params {
        return;
}


- (void) glTexImage2D:(int32_t)target :(int32_t)level :(int32_t)internalformat :(int32_t)width :(int32_t)height :(int32_t)border :(int32_t)format :(int32_t)type :(Buffer*)pixels {
        return;
}


- (void) glTexParameterf:(int32_t)target :(int32_t)pname :(float)param {
        return;
}


- (void) glTexParameteri:(int32_t)target :(int32_t)pname :(int32_t)param {
        return;
}


- (void) glTexSubImage2D:(int32_t)target :(int32_t)level :(int32_t)xoffset :(int32_t)yoffset :(int32_t)width :(int32_t)height :(int32_t)format :(int32_t)type :(Buffer*)pixels {
        return;
}


- (void) glTranslatef:(float)x :(float)y :(float)z {
        return;
}


- (void) glVertexPointer:(int32_t)size :(int32_t)type :(int32_t)stride :(Buffer*)pointer {
        return;
}


- (void) glViewport:(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height {
        return;
}


- (void) glBegin:(int32_t)i {
        return;
}


- (void) glEnd {
        return;
}


- (void) glVertex3f:(float)f :(float)f2 :(float)f3 {
        return;
}


- (void) glPolygonMode:(int32_t)i :(int32_t)i1 {
        return;
}

@end

