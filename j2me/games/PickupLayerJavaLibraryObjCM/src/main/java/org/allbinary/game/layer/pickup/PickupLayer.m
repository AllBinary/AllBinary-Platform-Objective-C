// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/PickupLayer.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory.h"
#include "org/allbinary/game/combat/destroy/DestroyedLayerProcessor.h"
#include "org/allbinary/game/identification/BasicGroupFactory.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterface.h"
#include "org/allbinary/game/layer/pickup/PickupableInterface.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/game/layer/pickup/BasicLayerProcessor.h")
#include "org/allbinary/game/layer/pickup/BasicLayerProcessor.h"
#endif
#if __has_include("javax/microedition/khronos/opengles/BasicLayerProcessor.h")
#include "javax/microedition/khronos/opengles/BasicLayerProcessor.h"
#endif
#if __has_include("javax/microedition/lcdui/BasicLayerProcessor.h")
#include "javax/microedition/lcdui/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/animation/BasicLayerProcessor.h")
#include "org/allbinary/animation/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/animation/BasicLayerProcessor.h")
#include "org/allbinary/animation/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/collision/BasicLayerProcessor.h")
#include "org/allbinary/game/collision/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/BasicLayerProcessor.h")
#include "org/allbinary/game/combat/destroy/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/identification/BasicLayerProcessor.h")
#include "org/allbinary/game/identification/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/BasicLayerProcessor.h")
#include "org/allbinary/game/multiplayer/layer/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/BasicLayerProcessor.h")
#include "org/allbinary/game/multiplayer/layer/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/graphics/BasicLayerProcessor.h")
#include "org/allbinary/graphics/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/image/opengles/BasicLayerProcessor.h")
#include "org/allbinary/image/opengles/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/view/BasicLayerProcessor.h")
#include "org/allbinary/view/BasicLayerProcessor.h"
#endif



void PickupLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PickupLayer

- (void) initFields {
    self->pickedUpLayerInterfaceFactoryInterface = (CountedPickedUpLayerInterfaceFactory_staticInit(), CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY);
    self->destroyed = false;
    self->animationInterface = [[NullAnimationFactory getFactoryInstance] getInstance:0];
}


- (instancetype) init:(const char*)name :(RemoteInfo*)remoteInfo :(int32_t)total :(PickedUpLayerInterfaceFactoryInterface*)pickedUpLayerInterfaceFactoryInterface :(Animation*)animationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition {
        self = [super init:remoteInfo :[BasicGroupFactory getInstance]->NONE_ARRAY :name :rectangle :viewPosition];
        [self initFields];
        [self setCollidableInferface:[[CollidableAlwaysPickupNeverCollideBehaviorFactory getInstance] createBehavior]];
        [self setLayerWidth:10];
        [self setLayerHeight:10];
        [self init_:pickedUpLayerInterfaceFactoryInterface :animationInterface];
    return self;
}


- (void) init_:(PickedUpLayerInterfaceFactoryInterface*)pickedUpLayerInterfaceFactoryInterface :(Animation*)animationInterface {
        self->pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface;
        self->animationInterface = animationInterface;
        [self setDestroyed:false];
}


- (void) initXYZ:(int32_t)x :(int32_t)y :(int32_t)z {
        [self setPosition:x :y :z];
}


- (void) paint:(Graphics*)graphics {
        ViewPositionBase* viewPosition = [self getViewPosition];
        int32_t viewX = [viewPosition getX];
        int32_t viewY = [viewPosition getY];
        [self->animationInterface paintXY:graphics :viewX :viewY];
}


- (void) paintThreed:(Graphics*)graphics {
        ViewPositionBase* viewPosition = [self getViewPosition];
        int32_t viewX = [viewPosition getX];
        int32_t viewY = [viewPosition getY];
        [self->animationInterface paintThreedXYZ:graphics :viewX :viewY :3];
}


- (PickedUpLayerInterfaceFactoryInterface*) getPickedUpLayerInterfaceFactoryInterface {
        return self->pickedUpLayerInterfaceFactoryInterface;
}


- (void) setPickedUp {
        [self setDestroyed:true];
}


- (bool) isDestroyed {
        return self->destroyed;
}


- (void) setDestroyed:(bool)destroyed {
        self->destroyed = destroyed;
        if ([self isDestroyed]) {
            [[DestroyedLayerProcessor getInstance] add:self];
        }
}


- (void) damage:(int32_t)damage :(int32_t)damageType {
}


- (int32_t) getDamage:(int32_t)damageType {
        return 0;
}


// throws Exception
- (void) set:(GL*)gl {
        OpenGLSurfaceChangedInterface* openGLSurfaceChangedInterface = ((OpenGLSurfaceChangedInterface*) self->animationInterface);
        [openGLSurfaceChangedInterface set:gl];
}

@end

