// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/collision/CollidableInterface.h"
#include "org/allbinary/game/collision/LayerCollisionUtil.h"
#include "org/allbinary/game/collision/CollidableInterfaceCompositeInterface.h"
#include "org/allbinary/game/collision/CollisionTypeFactory.h"
#include "org/allbinary/game/collision/CollisionType.h"



void CollidableBaseBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableBaseBehavior

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->layerCollisionUtil = [LayerCollisionUtil getInstance];
    self->collidable = true;
}


- (instancetype) init:(bool)collidable {
    self = [super init];
    [self initFields];
        self->collidable = collidable;
    return self;
}


- (void) update {
}


- (const char*) getName {
        return java_objc_class_name(self);
}


- (void) setCollidable:(bool)collidable {
        self->collidable = collidable;
}


- (bool) isCollidable:(CollidableCompositeLayer*)ownerLayer {
        return self->collidable;
}


// throws Exception
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)allbinaryCollidableLayer {
        java_throw(java_exception_new("Exception", [[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->NOT_IMPLEMENTED] append:[CommonLabels getInstance]->COLON_SEP] append:java_objc_class_name(self)] toString]));
}


- (bool) isCollision:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collisionLayer {
        return [self->layerCollisionUtil isCollision:ownerLayer :collisionLayer];
}


- (bool) isCollisionInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
        return [self->layerCollisionUtil isCollision:ownerLayer :((AllBinaryLayer*) collidableInterfaceCompositeInterface)];
}


// throws Exception
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (void) paint:(CollidableCompositeLayer*)ownerLayer :(Graphics*)graphics {
}


- (CollisionType*) getCollisionTypeWith:(AllBinaryLayer*)layerInterface {
        return [CollisionTypeFactory getInstance]->NONE;
}

@end

