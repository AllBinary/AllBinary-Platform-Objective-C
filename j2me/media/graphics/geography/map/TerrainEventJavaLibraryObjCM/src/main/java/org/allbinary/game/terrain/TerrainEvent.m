// Generated Code Do Not Modify
#include "org/allbinary/game/terrain/TerrainEvent.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/game/terrain/BasicTerrainInfo.h"



void TerrainEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TerrainEvent

- (void) initFields {
    self->basicTerrainInfo = (BasicTerrainInfo_staticInit(), BasicTerrainInfo_NULL_BASIC_TERRAIN_INFO);
}


- (instancetype) init:(id)basicTerrainInfo {
        self = [super init:basicTerrainInfo];
        [self initFields];
        [self setBasicTerrainInfo:self->basicTerrainInfo];
    return self;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"TerrainEvent: \n"];
        [stringBuffer append:"LayerInterface: "];
        [stringBuffer append:[self->basicTerrainInfo toString]];
        return [stringBuffer toString];
}


- (BasicTerrainInfo*) getBasicTerrainInfo {
        return self->basicTerrainInfo;
}


- (void) setBasicTerrainInfo:(BasicTerrainInfo*)basicTerrainInfo {
        self->basicTerrainInfo = basicTerrainInfo;
}


- (void) setBasicTerrainInfoForCircularStaticPool:(BasicTerrainInfo*)basicTerrainInfo {
        self->basicTerrainInfo = basicTerrainInfo;
}

@end

