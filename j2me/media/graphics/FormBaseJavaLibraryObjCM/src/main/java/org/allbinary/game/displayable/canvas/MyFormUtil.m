// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/MyFormUtil.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureFactory.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/threed/SWTJOGLProcessor.h")
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#endif


static MyFormUtil* MyFormUtil_instance;

void MyFormUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MyFormUtil_instance = ((MyFormUtil*) [((MyFormUtil*) [MyFormUtil alloc]) init]);
}

@implementation MyFormUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->popupMenuRectangle = (RectangleFactory_staticInit(), RectangleFactory_SINGLETON);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (MyFormUtil*) getInstance {
        return (MyFormUtil_staticInit(), MyFormUtil_instance);
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        Features* features = [Features getInstance];
        bool isOpenGL = [features isDefault:[OpenGLFeatureFactory getInstance]->OPENGL];
        int32_t TOTAL_CHAR_WIDTH = ([[SWTJOGLProcessor getInstance] isJOGL] && isOpenGL ? 2 : 3);
        int32_t width = [MyFontProcessor defaultStringWidth:font :TOTAL_CHAR_WIDTH];
        PointFactory* pointFactory = [PointFactory getInstance];
        if ([displayInfo getLastHeight] < 320) {
            self->popupMenuRectangle = ((Rectangle*) [((Rectangle*) [Rectangle alloc]) init:[pointFactory createXY:0 :25] :width :([font getHeight] * 4) + 2]);
        } else {
            self->popupMenuRectangle = ((Rectangle*) [((Rectangle*) [Rectangle alloc]) init:[pointFactory createXY:0 :[displayInfo getLastHalfHeight] - 70] :width :([font getHeight] * 5)]);
        }
}


- (Rectangle*) getPopupMenuRectangle {
        return self->popupMenuRectangle;
}

@end

