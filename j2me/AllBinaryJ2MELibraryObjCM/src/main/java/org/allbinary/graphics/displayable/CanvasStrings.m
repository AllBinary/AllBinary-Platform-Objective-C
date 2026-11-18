// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"


static CanvasStrings* CanvasStrings_instance;

void CanvasStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CanvasStrings_instance = [((CanvasStrings*) [CanvasStrings alloc]) init];
}

@implementation CanvasStrings

- (void) initFields {
    self->CONSTRUCTOR = "MyCanvas::MyCanvas";
    self->PAUSE = "MyCanvas::pause";
    self->UN_PAUSE = "MyCanvas::unPause";
    self->SET_FULL_SCREEN_MODE = "setFullScreenMode";
    self->SIZE_CHANGED = "sizeChanged";
    self->SCALED_IMAGES = "scaledImages";
    self->PAINT = "paint";
    self->ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent";
    self->UPDATE_MEASUREMENT = "updateMeasurement";
    self->FD_WIDTH = " font/display width: ";
    self->FD_HEIGHT = " font/display height: ";
    self->EMPTY_CHILD_NAME_LIST = [[BasicArrayListUtil getInstance] getImmutableInstance];
    self->ABOUT = "About";
    self->OPTIONS = "Options";
    self->FONT_ATLAS = "/font.png";
    self->OBJ_MODEL = "_obj";
    self->MD2_MODEL = "_md2";
    self->_PNG_ = ".png";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CanvasStrings*) getInstance {
        return (CanvasStrings_staticInit(), CanvasStrings_instance);
}

@end

