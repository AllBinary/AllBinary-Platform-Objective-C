// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEvent.h"
#include "org/allbinary/game/identification/BasicGroupFactory.h"
#include "org/allbinary/game/identification/Group.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickupBehavior.h"
#include "org/allbinary/game/part/PartInterface.h"
#include "org/allbinary/game/part/PartInterfaceUtil.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/layer/special/SpecialGameInputInterface.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/identification/BasicGroupFactory.h")
#include "org/allbinary/game/identification/BasicGroupFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/game/identification/Group.h")
#include "org/allbinary/game/identification/Group.h"
#endif


static id CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER;
static const char* CollidableDestroyableDamageableLayer_READYFOREXPLOSION = "ReadyForExplosion: ";

void CollidableDestroyableDamageableLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation CollidableDestroyableDamageableLayer

- (void) initFields {
    
    self->readyForExplosion = false;
    
    
    self->initX = 0;
    self->initY = 0;
    self->initZ = 0;
    self->partInterfaceArrayP = [PartInterfaceUtil getZeroArray];
    
    self->allBinaryGameLayerManagerP = [AllBinaryGameLayerManager getNullInstance];
    self->isDraggable = false;
    self->isDragged = false;
    self->isDropped = false;
}


+ (CollidableDestroyableDamageableLayer*) getNullInstance {
        if ((CollidableDestroyableDamageableLayer_staticInit(), CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) == [NullUtil getInstance]->NULL_OBJECT) {
            CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = ((CollidableDestroyableDamageableLayer*) [((CollidableDestroyableDamageableLayer*) [CollidableDestroyableDamageableLayer alloc]) init:[BasicGroupFactory getInstance]->NONE_ARRAY :[StringUtil getInstance]->EMPTY_STRING :(RectangleFactory_staticInit(), RectangleFactory_SINGLETON) :(ViewPositionBase_staticInit(), ViewPositionBase_NULL_VIEW_POSITION)]);
        }
        return ((CollidableDestroyableDamageableLayer*) (CollidableDestroyableDamageableLayer_staticInit(), CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER));
}


- (instancetype) init:(Group**)groupInterface :(const char*)name :(Rectangle*)layerInfo :(ViewPositionBase*)viewPosition {
        self = [super init:name :layerInfo :viewPosition :[CollidableNeverCollideBehaviorFactory getInstance]];
        [self initFields];
        self->initWidth = [layerInfo getWidth];
        self->initHeight = [layerInfo getHeight];
        self->groupInterface = groupInterface;
        self->pickupBehavior = [PickupBehavior getNullInstance];
    return self;
}


// throws Exception
- (void) initPosition {
        [self setPosition:self->initX :self->initY :self->initZ];
}


// throws Exception
- (void) initPositionXYZ:(int32_t)x :(int32_t)y :(int32_t)z {
        self->initX = x;
        self->initY = y;
        self->initZ = z;
}


- (void) paint:(Graphics*)graphics {
        [super paint:graphics];
}


// throws Exception
- (void) damage:(int32_t)damage :(int32_t)damageType {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (int32_t) getDamage:(int32_t)damageType {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (bool) isDestroyed {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (Group**) getGroupInterface {
        return self->groupInterface;
}


- (void) setGroupInterface:(Group**)teamInterface {
        self->groupInterface = teamInterface;
}


// throws Exception
- (void) setAllBinaryGameLayerManager:(AllBinaryGameLayerManager*)allBinaryGameLayerManager {
        self->allBinaryGameLayerManagerP = allBinaryGameLayerManager;
        if (self->allBinaryGameLayerManagerP == nil) {
            java_throw(java_exception_new("RuntimeException", ""));
        }
}


- (bool) isReadyForExplosion {
        return self->readyForExplosion;
}


- (void) setReadyForExplosion:(bool)isReadyForExplosion {
        self->readyForExplosion = isReadyForExplosion;
}


- (int32_t) getInitWidth {
        return self->initWidth;
}


- (int32_t) getInitHeight {
        return self->initHeight;
}


- (int32_t) getInitX {
        return self->initX;
}


- (int32_t) getInitY {
        return self->initY;
}


// throws Exception
- (void) up {
}


// throws Exception
- (void) down {
}


// throws Exception
- (void) right {
}


// throws Exception
- (void) left {
}


// throws Exception
- (void) strafeLeft {
}


// throws Exception
- (void) strafeRight {
}


// throws Exception
- (void) fire:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special1:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special2:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special3:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special4:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) special5:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent {
}


// throws Exception
- (void) upAnalog:(int32_t)yAnalogValue {
}


// throws Exception
- (void) downAnalog:(int32_t)yAnalogValue {
}


// throws Exception
- (void) rightAnalog:(int32_t)xAnalogValue {
}


// throws Exception
- (void) leftAnalog:(int32_t)xAnalogValue {
}


// throws Exception
- (void) rightTrigger:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)xAnalogValue {
}


// throws Exception
- (void) leftTrigger:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)xAnalogValue {
}


- (void) onDestroyed:(DestroyedEvent*)destroyedEvent {
}


- (PickupBehavior*) getPickupBehavior {
        return self->pickupBehavior;
}


- (void) setPickupBehavior:(PickupBehavior*)pickupBehavior {
        self->pickupBehavior = pickupBehavior;
}


// throws Exception
- (void) addPart:(PickedUpLayerInterfaceFactoryInterface*)pickedUpLayerInterfaceFactoryInterface {
}


- (void) setPartInterfaceArray:(PartInterface**)partInterfaceArray {
        self->partInterfaceArrayP = partInterfaceArray;
}


- (PartInterface**) getPartInterfaceArray {
        return self->partInterfaceArrayP;
}


- (void) toStringAppend:(StringMaker*)stringBuffer {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        PositionStrings* positionStrings = [PositionStrings getInstance];
        [super toStringAppend:stringBuffer];
        [stringBuffer append:commonSeps->NEW_LINE];
        Group** groupInterfaceArray = [self getGroupInterface];
        int32_t size = java_array_length(groupInterfaceArray);
        for (int32_t index = 0; index < size; index++) {
            [stringBuffer append:[groupInterfaceArray[index] toString]];
            [stringBuffer append:commonSeps->COMMA];
        }
        PickupBehavior* pickupBehavior = [self getPickupBehavior];
        if (pickupBehavior != nil) {
            [stringBuffer append:commonSeps->NEW_LINE];
            [stringBuffer append:[pickupBehavior toString]];
        }
        [stringBuffer append:commonSeps->NEW_LINE];
        [stringBuffer append:CollidableDestroyableDamageableLayer_READYFOREXPLOSION];
        [stringBuffer appendboolean:self->readyForExplosion];
        [stringBuffer append:commonSeps->NEW_LINE];
        [stringBuffer append:self->commonStrings->INIT];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:positionStrings->X_LABEL];
        [stringBuffer appendint:self->initX];
        [stringBuffer append:positionStrings->Y_LABEL];
        [stringBuffer appendint:self->initX];
        [stringBuffer append:positionStrings->Z_LABEL];
        [stringBuffer appendint:self->initZ];
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [self toStringAppend:stringBuffer];
        return [stringBuffer toString];
}

@end

