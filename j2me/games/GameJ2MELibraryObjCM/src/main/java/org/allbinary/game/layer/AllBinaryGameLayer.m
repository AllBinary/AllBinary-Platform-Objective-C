// Generated Code Do Not Modify
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/view/event/ViewPositionEvent.h"
#include "org/allbinary/game/layer/SWTUtil.h"
#include "org/allbinary/game/layer/SWTBlackPaintable.h"
#include "org/allbinary/game/layer/GameLayerUtil.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif



void AllBinaryGameLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryGameLayer

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    self->RED = [BasicColorFactory getInstance]->RED;
    self->paintable = [AllBinaryGameLayer createPaintable];
    self->gameKeyEventList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (Paintable*) createPaintable {
        if ((SWTUtil_staticInit(), SWTUtil_isSWT)) {
            return ((SWTBlackPaintable*) [((SWTBlackPaintable*) [SWTBlackPaintable alloc]) init]);
        }
        return [NullPaintable getInstance];
}


- (instancetype) init:(const char*)name :(Rectangle*)layerInfo :(ViewPositionBase*)viewPosition {
        self = [super init:name :layerInfo :viewPosition];
        [self initFields];
    return self;
}


// throws Exception
- (void) set:(GL*)gl {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (void) move {
}


- (BasicArrayList*) getGameKeyEventList {
        return self->gameKeyEventList;
}


// throws Exception
- (void) processInput:(AllBinaryLayerManager*)allBinaryLayerManager {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


// throws Exception
- (void) onViewPositionChangeEvent {
        [self onChangeEvent:self->viewPositionEvent];
}


// throws Exception
- (void) onChangeEvent:(ViewPositionEvent*)layerManagerEvent {
        if ([GameLayerUtil isOnScreen:self]) {
            [self setVisible:true];
        } else {
            [self setVisible:false];
        }
}


- (void) paintFirst:(Graphics*)graphics {
        [self->paintable paint:graphics];
}


- (void) paintDebug:(Graphics*)graphics {
        ViewPositionBase* viewPosition = [self getViewPosition];
        int32_t viewX = [viewPosition getX];
        int32_t viewY = [viewPosition getY];
        [self->basicSetColorUtil setBasicColorP:graphics :self->RED];
        [graphics drawRect:viewX :viewY :[self getWidth] :[self getHeight]];
}


- (void) setWidth:(int32_t)width {
        [super setLayerWidth:width];
        [self setHalfWidth:width >> 1];
}


- (void) setHeight:(int32_t)height {
        [super setLayerHeight:height];
        [self setHalfHeight:height >> 1];
}

@end

