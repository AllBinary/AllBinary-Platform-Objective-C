// Generated Code Do Not Modify
#include "org/allbinary/game/graphics/hud/BasicHud.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/graphics/hud/HudGraphicsPosition.h"
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"



void BasicHud_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicHud

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->canvasStrings = [CanvasStrings getInstance];
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    self->displayInfo = [DisplayInfoSingleton getInstance];
    self->updateMyFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->myFontProcessor = self->updateMyFontProcessor;
    self->location = 0;
    self->direction = 0;
    self->bufferZone = 0;
    self->bufferZoneY = 0;
    self->hudGraphicsPosition = (HudGraphicsPosition_staticInit(), HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITION);
    self->x = 0;
    self->y = 0;
    self->basicColor = [BasicColorFactory getInstance]->BLACK;
    
    self->updateMaxWidth = 0;
    self->updateMaxHeight = 0;
    self->offsetY = 0;
}


- (instancetype) init:(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        [self setLocation:location];
        [self setDirection:direction];
        [self setBufferZone:bufferZone];
        [self onDisplayChangeEvent:[DisplayInfoSingleton getInstance]->displayChangeEvent];
        [self setBasicColorP:basicColor];
        self->color = [basicColor intValue];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        JAVA_TRY {
            self->hudGraphicsPosition = [self getHudGraphicsPositionWH:[self->displayInfo getLastWidth] :[self->displayInfo getLastHeight] :self->updateMaxWidth :self->updateMaxHeight];
            self->x = [[self->hudGraphicsPosition getPoint] getX];
            [self setY:[[self->hudGraphicsPosition getPoint] getY]];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :self->canvasStrings->ON_DISPLAY_CHANGE_EVENT :e];
        } JAVA_END_TRY;
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (int32_t) getLocation {
        return self->location;
}


- (int32_t) getDirection {
        return self->direction;
}


// throws Exception
- (HudGraphicsPosition*) getHudGraphicsPositionWH:(int32_t)width :(int32_t)height :(int32_t)maxWidth :(int32_t)maxHeight {
        int32_t x = 0;
        int32_t y = 0;
        int32_t anchor = 0;
        BasicHudFactory* basicHudFactory = [BasicHudFactory getInstance];
        if (basicHudFactory->BOTTOMLEFT == [self getLocation]) {
            x = self->bufferZone + 2;
            y = height - maxHeight - self->bufferZone;
            anchor = (Graphics_staticInit(), Graphics_BOTTOM) & (Graphics_staticInit(), Graphics_LEFT);
        } else if (basicHudFactory->BOTTOMRIGHT == [self getLocation]) {
            x = width - maxWidth;
            y = height - maxHeight - self->bufferZone;
            anchor = (Graphics_staticInit(), Graphics_BOTTOM) & (Graphics_staticInit(), Graphics_RIGHT);
        } else if (basicHudFactory->TOPLEFT == [self getLocation]) {
            x = self->bufferZone + 2;
            y = self->bufferZoneY;
            anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
        } else if (basicHudFactory->TOPRIGHT == [self getLocation]) {
            x = width - maxWidth;
            y = self->bufferZoneY;
            anchor = (Graphics_staticInit(), Graphics_TOP) & (Graphics_staticInit(), Graphics_RIGHT);
        } else if (basicHudFactory->TOPCENTER == [self getLocation]) {
            x = ((width - maxWidth) / 2);
            y = self->bufferZoneY;
            anchor = (Graphics_staticInit(), Graphics_TOP) & (Graphics_staticInit(), Graphics_HCENTER);
        } else if (basicHudFactory->BOTTOMCENTER == [self getLocation]) {
            x = ((width - maxWidth) / 2);
            y = height - maxHeight - self->bufferZone;
            anchor = (Graphics_staticInit(), Graphics_BOTTOM) & (Graphics_staticInit(), Graphics_HCENTER);
        } else if (basicHudFactory->ABSOLUTE == [self getLocation]) {
            x = maxHeight;
            y = maxWidth;
            anchor = 0;
        }
        return [((HudGraphicsPosition*) [HudGraphicsPosition alloc]) init:[self getPoint:x :y] :anchor];
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent {
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (GPoint*) getPoint:(int32_t)x :(int32_t)y {
        return [[PointFactory getInstance] createXY:x :y];
}


- (int32_t) getBufferZone {
        return self->bufferZone;
}


- (void) setBufferZone:(int32_t)bufferZone {
        self->bufferZone = bufferZone;
        if ([J2MEUtil isHTML]) {
            self->bufferZoneY = self->bufferZone;
        } else {
            self->bufferZoneY = self->bufferZone + 5;
        }
}


- (void) setLocation:(int32_t)location {
        self->location = location;
}


- (void) setDirection:(int32_t)direction {
        self->direction = direction;
}


- (HudGraphicsPosition*) getHudGraphicsPosition {
        return self->hudGraphicsPosition;
}


- (int32_t) getColor {
        return self->color;
}


- (int32_t) getX {
        return self->x;
}


- (void) setX:(int32_t)x {
        self->x = x;
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}


- (void) setY:(int32_t)y {
        self->y = y;
}


- (int32_t) getY {
        return self->y;
}


- (void) paintSSO:(Graphics*)graphics :(const char*)string :(const char*)string2 :(int32_t)offset {
        [self->myFontProcessor process:graphics];
        [self->basicSetColorUtil setBasicColorP:graphics :[self getBasicColorP]];
        [graphics drawString:string :self->x :[self getY] :[self->hudGraphicsPosition getAnchor]];
        [graphics drawString:string2 :self->x + offset :[self getY] :[self->hudGraphicsPosition getAnchor]];
}


- (void) paintSSOO:(Graphics*)graphics :(const char*)string :(const char*)string2 :(int32_t)offset :(int32_t)offset2 {
        [self->myFontProcessor process:graphics];
        [graphics setColor:[self getColor]];
        [graphics drawString:string :self->x + offset :[self getY] :[self->hudGraphicsPosition getAnchor]];
        [graphics drawString:string2 :self->x + offset2 :[self getY] :[self->hudGraphicsPosition getAnchor]];
}


- (void) paintDXY:(Graphics*)graphics :(uint16_t*)charArray :(int32_t)offset :(int32_t)len :(uint16_t*)charArray2 :(int32_t)offset2 :(int32_t)len2 :(int32_t)xOffset :(int32_t)xOffset2 {
        [self->myFontProcessor process:graphics];
        [self->basicSetColorUtil setBasicColorP:graphics :[self getBasicColorP]];
        int32_t y = [self getY];
        [graphics drawChars:charArray :offset :len :self->x + xOffset :y :[self->hudGraphicsPosition getAnchor]];
        [graphics drawChars:charArray2 :offset2 :len2 :self->x + xOffset2 :y :[self->hudGraphicsPosition getAnchor]];
}


- (void) paintDX:(Graphics*)graphics :(uint16_t*)charArray :(int32_t)offset :(int32_t)len :(uint16_t*)charArray2 :(int32_t)offset2 :(int32_t)len2 :(int32_t)xOffset {
        [self->myFontProcessor process:graphics];
        [self->basicSetColorUtil setBasicColorP:graphics :[self getBasicColorP]];
        int32_t y = [self getY];
        [graphics drawChars:charArray :offset :len :self->x :y :[self->hudGraphicsPosition getAnchor]];
        [graphics drawChars:charArray2 :offset2 :len2 :self->x + xOffset :y :[self->hudGraphicsPosition getAnchor]];
}


- (void) paintOffsetAndLength:(Graphics*)graphics :(uint16_t*)charArray :(int32_t)offset :(int32_t)len {
        [self->myFontProcessor process:graphics];
        [self->basicSetColorUtil setBasicColorP:graphics :[self getBasicColorP]];
        int32_t y = [self getY];
        [graphics drawChars:charArray :offset :len :self->x :y :[self->hudGraphicsPosition getAnchor]];
}


- (void) paintString:(Graphics*)graphics :(const char*)string {
        [self->myFontProcessor process:graphics];
        [self->basicSetColorUtil setBasicColorP:graphics :[self getBasicColorP]];
        int32_t y = [self getY] + self->offsetY;
        [graphics drawString:string :self->x :y :[self->hudGraphicsPosition getAnchor]];
}

@end

