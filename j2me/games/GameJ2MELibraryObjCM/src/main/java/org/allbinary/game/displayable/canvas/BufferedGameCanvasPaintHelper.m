// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/BufferedGameCanvasPaintHelper.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullCanvas.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif


static constexpr int32_t BufferedGameCanvasPaintHelper_MAX_IMAGES = 4;

void BufferedGameCanvasPaintHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BufferedGameCanvasPaintHelper

- (void) initFields {
    self->gameCanvas = (NullCanvas_staticInit(), NullCanvas_NULL_CANVAS);
    self->offScreenImage = ((Image**) java_array_new(sizeof(Image*), BufferedGameCanvasPaintHelper_MAX_IMAGES));
    self->previousImage = (NullImage_staticInit(), NullImage_NULL_IMAGE);
    self->circularIndexUtil = [CircularIndexUtil createInstance:BufferedGameCanvasPaintHelper_MAX_IMAGES];
    self->drawCircularIndexUtil = [CircularIndexUtil createInstanceAt:BufferedGameCanvasPaintHelper_MAX_IMAGES - 1 :BufferedGameCanvasPaintHelper_MAX_IMAGES];
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
    self = [super init];
    [self initFields];
        java_throw(java_exception_new("Exception", "No Longer Used"));
    return self;
}


- (void) process {
        MyCanvas* myCanvas = (((MyCanvas*) self->gameCanvas));
        [myCanvas draw:[self->offScreenImage[[self->circularIndexUtil getIndex]] getGraphics]];
        [self->circularIndexUtil next];
        [self->drawCircularIndexUtil next];
}


- (void) paint:(Graphics*)graphics {
        self->previousImage = self->offScreenImage[[self->drawCircularIndexUtil getIndex]];
        [graphics drawImage:self->previousImage :0 :0 :self->anchor];
}

@end

