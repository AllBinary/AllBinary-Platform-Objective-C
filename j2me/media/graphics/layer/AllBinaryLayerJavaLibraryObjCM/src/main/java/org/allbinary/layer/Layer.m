// Generated Code Do Not Modify
#include "org/allbinary/layer/Layer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"


int32_t Layer_ID;

void Layer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Layer_ID = [[SmallIntegerSingletonFactory getInstance] getAt:0];
}

@implementation Layer

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->x = 0;
    self->y = 0;
    self->z = 3;
    self->width = 0;
    self->height = 0;
    self->visible = true;
}


- (instancetype) init:(int32_t)width :(int32_t)height {
    self = [super init];
    [self initFields];
        [self setLayerWidth:width];
        [self setLayerHeight:height];
    return self;
}


- (void) setPosition:(int32_t)x :(int32_t)y :(int32_t)z {
        self->x = x;
        self->y = y;
        self->z = z;
}


- (void) moveDXY:(int32_t)dx :(int32_t)dy {
        self->x += dx;
        self->y += dy;
}


- (void) moveDXYZ:(int32_t)dx :(int32_t)dy :(int32_t)dz {
        self->x += dx;
        self->y += dy;
        self->z += dz;
}


- (int32_t) getXP {
        return self->x;
}


- (int32_t) getYP {
        return self->y;
}


- (int32_t) getZP {
        return self->z;
}


- (int32_t) getWidth {
        return self->width;
}


- (int32_t) getHeight {
        return self->height;
}


- (int64_t) getDepth {
        return 0LL;
}


- (void) setVisible:(bool)visible {
        self->visible = visible;
}


- (bool) isVisible {
        return self->visible;
}


- (void) paint:(Graphics*)graphics {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        CanvasStrings* canvasStrings = [CanvasStrings getInstance];
        [self->logUtil putF:commonStrings->NOT_IMPLEMENTED :self :canvasStrings->PAINT];
}


- (void) setLayerWidth:(int32_t)width {
        if (width < 0) {
            java_throw(java_exception_new("IllegalArgumentException", ""));
        }
        self->width = width;
}


- (void) setLayerHeight:(int32_t)height {
        if (height < 0) {
            java_throw(java_exception_new("IllegalArgumentException", ""));
        }
        self->height = height;
}


- (void) toStringAppend:(StringMaker*)stringBuffer {
}

@end

