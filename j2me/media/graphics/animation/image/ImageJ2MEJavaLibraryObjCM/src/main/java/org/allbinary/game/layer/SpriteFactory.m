// Generated Code Do Not Modify
#include "org/allbinary/game/layer/SpriteFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/game/layer/SpriteFactoryInterface.h"


static SpriteFactory* SpriteFactory_instance;

void SpriteFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SpriteFactory_instance = [((SpriteFactory*) [SpriteFactory alloc]) init];
}

@implementation SpriteFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (SpriteFactory*) getInstance {
        return (SpriteFactory_staticInit(), SpriteFactory_instance);
}


- (Sprite*) createSprite:(Image*)image :(int32_t)frameWidth :(int32_t)frameHeight {
        return [((Sprite*) [Sprite alloc]) init:image :frameWidth :frameHeight];
}

@end

