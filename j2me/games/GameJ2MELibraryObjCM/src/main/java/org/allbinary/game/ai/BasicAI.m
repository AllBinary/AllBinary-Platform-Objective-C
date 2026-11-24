// Generated Code Do Not Modify
#include "org/allbinary/game/ai/BasicAI.h"
#include "org/allbinary/game/displayable/canvas/CanvasUtil.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif


int32_t BasicAI_AI_VISITOR;
int32_t BasicAI_ID;

void BasicAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicAI_AI_VISITOR = [[SmallIntegerSingletonFactory getInstance] getAt:2];
    BasicAI_ID = [[SmallIntegerSingletonFactory getInstance] getAt:1];
}

@implementation BasicAI

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->gameKeyEventFactory = [GameKeyEventFactory getInstance];
    
    
    self->lastKey = -1;
}


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
    self = [super init];
    [self initFields];
        self->ownerLayerInterface = ownerLayerInterface;
        self->gameInput = gameInput;
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (void) processKeyAI:(int32_t)key {
        if (key != -1) {
            [self->gameInput add:[self->gameKeyEventFactory getInstanceForKey:self :key]];
        }
}


- (void) setLastKey:(int32_t)lastKey {
        self->lastKey = lastKey;
}


- (int32_t) getLastKey {
        return self->lastKey;
}


- (AllBinaryLayer*) getOwnerLayerInterface {
        return self->ownerLayerInterface;
}


- (GameInput*) getGameInput {
        return self->gameInput;
}


- (const char*) getName {
        return java_objc_class_name(self);
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:[CommonSeps getInstance]->NEW_LINE];
        [stringBuffer append:[self getName]];
        [stringBuffer append:" LastKey: "];
        [stringBuffer append:[CanvasUtil getKeyName:[self getLastKey]]];
        return [stringBuffer toString];
}


- (int32_t) getSourceId {
        return 1;
}

@end

