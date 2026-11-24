// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/BasicPopupMenuPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/AndroidUtil.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/animation/vector/RectangleFilledAnimation.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/layer/SWTUtil.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "org/allbinary/graphics/draw/DrawVerticalStringUtil.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureFactory.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureUtil.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#endif
#if __has_include("org/allbinary/graphics/threed/SWTJOGLProcessor.h")
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#endif


static const char* BasicPopupMenuPaintable_NAME = "MENU";

void BasicPopupMenuPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicPopupMenuPaintable

- (void) initFields {
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    self->drawStringUtil = [DrawVerticalStringUtil getInstance];
    
    
    self->myFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    
    self->BORDER = 0;
    self->heightOffset = 0;
    self->offset = 0;
    self->animationInterface = nullptr;
}


- (instancetype) init:(Rectangle*)rectangle :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
    self = [super init];
    [self initFields];
        self->foregroundBasicColor = foregroundBasicColor;
        self->label = BasicPopupMenuPaintable_NAME;
        self->rectangle = rectangle;
        if ([J2MEUtil isJ2ME] || [J2MEUtil isHTML]) {
            self->animationInterface = [[NullAnimationFactory getFactoryInstance] getInstance:0];
        } else {
            self->animationInterface = ((RectangleFilledAnimation*) [((RectangleFilledAnimation*) [RectangleFilledAnimation alloc]) init:[self->rectangle getWidth] :[self->rectangle getHeight] :[BasicColorFactory getInstance]->TRANSPARENT_GREY]);
        }
        [self initMethod:rectangle];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        Features* features = [Features getInstance];
        bool isOpenGL = [features isDefault:[OpenGLFeatureFactory getInstance]->OPENGL];
        [self->drawStringUtil updateMeasurement:graphics :self->label];
        int32_t BORDER = 0;
        if ([J2MEUtil isHTML] || isOpenGL) {
            BORDER = [MyFontProcessor defaultCharWidth:font] / 2;
        } else if ([AndroidUtil isAndroid] || [J2MEUtil isJ2SE] || (SWTUtil_staticInit(), SWTUtil_isSWT)) {
            BORDER = [MyFontProcessor defaultCharWidth:font];
        } else {
            BORDER = [MyFontProcessor defaultCharWidth:font] * 2;
        }
        self->BORDER = BORDER;
        self->heightOffset = [self->rectangle getHeight] - ([font getHeight] * ((int32_t) strlen(BasicPopupMenuPaintable_NAME)));
        if ([[OpenGLFeatureUtil getInstance] isAnyThreed]) {
            self->heightOffset -= [font getHeight] + 2;
            if ([AndroidUtil isAndroid]) {
                self->heightOffset = [font getHeight];
            } else {
                self->heightOffset -= [font getHeight] + 2;
            }
        }
        self->offset = (self->heightOffset >> 1) + (([[SWTJOGLProcessor getInstance] isJOGL] ? 4 : 0));
        self->myFontProcessor = [MyFontProcessor getInstance];
}


// throws Exception
- (void) initMethod:(Rectangle*)rectangle {
        self->rectangle = rectangle;
        int32_t width = [self->rectangle getWidth];
        int32_t height = [self->rectangle getHeight];
        if ([J2MEUtil isJ2ME] || [J2MEUtil isHTML]) {
        } else {
            RectangleFilledAnimation* rectangleFilledAnimation = ((RectangleFilledAnimation*) self->animationInterface);
            [rectangleFilledAnimation setWidth:width];
            [rectangleFilledAnimation setHeight:height];
        }
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        GPoint* point = [self->rectangle getPoint];
        int32_t x = [point getX];
        int32_t y = [point getY];
        int32_t width = [self->rectangle getWidth];
        int32_t height = [self->rectangle getHeight];
        [self->animationInterface paintXY:graphics :x :y];
        [self->basicSetColorUtil setBasicColorP:graphics :self->foregroundBasicColor];
        [self->drawStringUtil paintVerticle:graphics :self->label :x + self->BORDER :y + self->offset :0];
        [graphics drawRect:x :y :width :height];
}

@end

