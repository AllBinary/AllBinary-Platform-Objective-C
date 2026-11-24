// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeature.h"


static OpenGLFeatureFactory* OpenGLFeatureFactory_instance;

void OpenGLFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLFeatureFactory_instance = ((OpenGLFeatureFactory*) [((OpenGLFeatureFactory*) [OpenGLFeatureFactory alloc]) init]);
}

@implementation OpenGLFeatureFactory

- (void) initFields {
    self->OPENGL_OPTIONS = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"OpenGL Options"]);
    self->OPENGL = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"OpenGL"]);
    self->OPENGL_SURFACE_VIEW = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"GLSurfaceView"]);
    self->OPENGL_2D = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"OpenGL 2D"]);
    self->OPENGL_3D = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"OpenGL 3D"]);
    self->OPENGL_2D_AND_3D = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"OpenGL 2D/3D"]);
    self->OPENGL_AUTO_SELECT = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"Auto Select"]);
    self->OPENGL_MINIMUM = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"Minimum"]);
    self->OPENGL_AS_GAME_THREAD = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"As game thread"]);
    self->OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"As different threads"]);
    self->IMAGE_COLOR_DEPTH_4444 = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"4444"]);
    self->IMAGE_COLOR_DEPTH_8888 = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"8888"]);
    self->IMAGE_COLOR_DEPTH_565 = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"565"]);
    self->OPENGL_COLOR_DEPTH_4444 = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"4444"]);
    self->OPENGL_COLOR_DEPTH_8888 = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"8888"]);
    self->OPENGL_COLOR_DEPTH_565 = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"565"]);
    self->OPENGL_DRAW_TEXTURE = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"GL_OES_draw_texture"]);
    self->OPENGL_VERTEX_BUFFER_OBJECT = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"vertex_buffer_object"]);
    self->OPENGL_SIMPLE_OBJECT3D_PROCESSOR = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"Simple Object3d Processor"]);
    self->OPENGL_COMPLEX_OBJECT3D_PROCESSOR = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"Complex Object3d Processor"]);
    self->OPENGL_SIMPLE_TEXTURE_PROCESSOR = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"Simple Texture Processor"]);
    self->OPENGL_COMPLEX_TEXTURE_PROCESSOR = ((OpenGLFeature*) [((OpenGLFeature*) [OpenGLFeature alloc]) init:"Complex Texture Processor"]);
}


+ (OpenGLFeatureFactory*) getInstance {
        return (OpenGLFeatureFactory_staticInit(), OpenGLFeatureFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

