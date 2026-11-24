#ifndef ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICS_H
#define ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICS_H
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
@class OpenGLESGraphics;
@class GL;
@class GL10;
@class Font;
@class Graphics;
@class FontDebugBase;
@class OpenGLSurfaceChangedInterface;
@class CommonStrings;
@class GraphicsInterface;
@class NullGL10;
#if __has_include("javax/microedition/khronos/opengles/GL10.h")
#include "javax/microedition/khronos/opengles/GL10.h"
#endif
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "org/allbinary/device/GraphicsInterface.h"

@interface OpenGLESGraphics : Graphics <OpenGLSurfaceChangedInterface, GraphicsInterface> {
@public
    CommonStrings* commonStrings;
    GL10* gl;
}
- (instancetype) init;
- (void) initFields;
- (void) updateGL:(GL*)gl;
- (void) set:(GL*)gl;
- (void) initMethod;
- (void) update;
- (void) setOrthoginalMode;
- (void) setCameraMode;
- (GL10*) getGl10;
- (void) setFontDebug:(Font*)font :(FontDebugBase*)fontDebug;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLESGraphics_staticInit(void);

#if __has_include("javax/microedition/khronos/opengles/GL10.h")
#include "javax/microedition/khronos/opengles/GL10.h"
#endif

#endif // ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICS_H
