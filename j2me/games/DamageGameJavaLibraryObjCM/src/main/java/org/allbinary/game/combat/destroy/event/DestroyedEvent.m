// Generated Code Do Not Modify
#include "org/allbinary/game/combat/destroy/event/DestroyedEvent.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/game/displayable/canvas/NullGameCanvas.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEventHandler.h"



void DestroyedEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DestroyedEvent

- (void) initFields {
    self->allBinaryGameCanvas = [NullGameCanvas getInstance];
    self->allBinaryLayerInterface = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
}


- (instancetype) init:(AllBinaryGameCanvas*)combatGameCanvas {
        self = [super init:[DestroyedEventHandler getInstance]];
        [self initFields];
        [self setAllBinaryGameCanvas:combatGameCanvas];
    return self;
}


- (AllBinaryGameCanvas*) getAllBinaryGameCanvas {
        return self->allBinaryGameCanvas;
}


- (AllBinaryLayer*) getLayerInterface {
        return self->allBinaryLayerInterface;
}


- (void) setAllBinaryGameCanvas:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        self->allBinaryGameCanvas = allBinaryGameCanvas;
}


- (void) setLayerInterfaceForCircularStaticPool:(AllBinaryLayer*)allBinaryLayerInterface {
        self->allBinaryLayerInterface = allBinaryLayerInterface;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:"DestroyedEvent: \n"];
        [stringBuffer append:"AllBinaryLayerInterface: "];
        [stringBuffer append:[self->allBinaryLayerInterface toString]];
        [stringBuffer append:"\nAllBinaryGameCanvas: "];
        [stringBuffer append:[[StringUtil getInstance] toString:[self getAllBinaryGameCanvas]]];
        return [stringBuffer toString];
}

@end

