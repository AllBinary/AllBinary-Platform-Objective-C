// Generated Code Do Not Modify
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/identification/BasicGroupFactory.h"
#include "org/allbinary/game/identification/Group.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/view/event/ViewPositionEvent.h"
#include "org/allbinary/layer/Layer.h"
#include "org/allbinary/layer/LayerInterface.h"


AllBinaryLayer* AllBinaryLayer_NULL_ALLBINARY_LAYER;
static const char* AllBinaryLayer_TYPE = "Type: ";

void AllBinaryLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryLayer_NULL_ALLBINARY_LAYER = [((AllBinaryLayer*) [AllBinaryLayer alloc]) init:[StringUtil getInstance]->EMPTY_STRING :(RectangleFactory_staticInit(), RectangleFactory_SINGLETON) :(ViewPositionBase_staticInit(), ViewPositionBase_NULL_VIEW_POSITION)];
}

@implementation AllBinaryLayer

- (void) initFields {
    self->viewPositionEvent = [((ViewPositionEvent*) [ViewPositionEvent alloc]) init:self];
    self->halfWidth = 0;
    self->halfHeight = 0;
    
    self->viewPosition = (ViewPositionBase_staticInit(), ViewPositionBase_NULL_VIEW_POSITION);
}


- (instancetype) init:(const char*)name :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition {
        self = [super init:[rectangle getWidth] :[rectangle getHeight]];
        [self initFields];
        const char* localName = nullptr;
        localName = [[[[[((StringMaker*) [StringMaker alloc]) init] append:name] append:[CommonSeps getInstance]->COLON] append:[Integer toHexString:[[TsUtil getInstance] hashCode:self]]] toString];
        self->name = localName;
        GPoint* point = [rectangle getPoint];
        [self setPosition:[point getX] :[point getY] :[point getZ]];
        [self setHalfWidth:([self getWidth] >> 1)];
        [self setHalfHeight:([self getHeight] >> 1)];
        self->viewPosition = viewPosition;
        [self->viewPosition setAllbinaryLayer:self];
    return self;
}


- (void) setPosition:(int32_t)x :(int32_t)y :(int32_t)z {
        [super setPosition:x :y :z];
}


- (void) moveDXYZ:(int32_t)dx :(int32_t)dy :(int32_t)dz {
        [super moveDXYZ:dx :dy :dz];
}


- (int32_t) getXP {
        return [super getXP];
}


- (int32_t) getYP {
        return [super getYP];
}


- (int32_t) getZP {
        return [super getZP];
}


- (int32_t) getWidth {
        return [super getWidth];
}


- (int32_t) getHeight {
        return [super getHeight];
}


- (void) setVisible:(bool)visible {
        [super setVisible:visible];
}


- (bool) isVisible {
        return [super isVisible];
}


- (void) paint:(Graphics*)graphics {
        [super paint:graphics];
}


// throws Exception
- (void) onChangeEvent:(ViewPositionEvent*)layerManagerEvent {
}


- (void) paintThreed:(Graphics*)graphics {
}


- (int32_t) getX2 {
        return [self getXP] + [self getWidth];
}


- (int32_t) getY2 {
        return [self getYP] + [self getHeight];
}


- (int32_t) getZ2 {
        return ((int32_t) ([self getZP] + [self getDepth]));
}


- (const char*) getName {
        return self->name;
}


- (void) setHalfWidth:(int32_t)halfWidth {
        self->halfWidth = halfWidth;
}


- (int32_t) getHalfWidth {
        return self->halfWidth;
}


- (void) setHalfHeight:(int32_t)halfHeight {
        self->halfHeight = halfHeight;
}


- (int32_t) getHalfHeight {
        return self->halfHeight;
}


- (int32_t) getHalfDepth {
        return ((int32_t) [self getDepth]) / 2;
}


- (ViewPositionBase*) getViewPosition {
        return self->viewPosition;
}


- (void) setViewPosition:(ViewPositionBase*)viewPosition {
        self->viewPosition = viewPosition;
}


- (Group**) getGroupInterface {
        return [BasicGroupFactory getInstance]->NONE_ARRAY;
}


- (bool) implmentsTickableInterface {
        return false;
}


- (bool) implmentsGameInputInterface {
        return false;
}


- (bool) implmentsArtificialIntelligenceCompositeInterface {
        return false;
}


- (bool) implmentsCollidableInterface {
        return false;
}


- (bool) implementsThreedInterface {
        return [[OpenGLFeatureUtil getInstance] isAnyThreed];
}


- (int32_t) getType {
        return -1;
}


- (int32_t) getMultiPlayerType {
        return -1;
}


- (void) toStringAppend:(StringMaker*)stringBuffer {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        PositionStrings* positionStrings = [PositionStrings getInstance];
        CommonLabels* commonLabels = [CommonLabels getInstance];
        [stringBuffer append:[self getName]];
        [stringBuffer append:commonSeps->COLON];
        [stringBuffer append:AllBinaryLayer_TYPE];
        [stringBuffer appendint:[self getType]];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:positionStrings->X_LABEL];
        [stringBuffer appendint:[self getXP]];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:positionStrings->Y_LABEL];
        [stringBuffer appendint:[self getYP]];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:positionStrings->Z_LABEL];
        [stringBuffer appendint:[self getZP]];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:commonLabels->WIDTH_LABEL];
        [stringBuffer appendint:[self getWidth]];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:commonLabels->HEIGHT_LABEL];
        [stringBuffer appendint:[self getHeight]];
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [self toStringAppend:stringBuffer];
        return [stringBuffer toString];
}

@end

