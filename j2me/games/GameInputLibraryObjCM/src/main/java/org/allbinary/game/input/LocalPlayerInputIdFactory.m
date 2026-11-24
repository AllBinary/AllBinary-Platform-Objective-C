// Generated Code Do Not Modify
#include "org/allbinary/game/input/LocalPlayerInputIdFactory.h"
#include "org/allbinary/game/input/analog/AnalogLocationInputFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/game/input/analog/AnalogLocationInputFactory.h")
#include "org/allbinary/game/input/analog/AnalogLocationInputFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static LocalPlayerInputIdFactory* LocalPlayerInputIdFactory_instance;

void LocalPlayerInputIdFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LocalPlayerInputIdFactory_instance = ((LocalPlayerInputIdFactory*) [((LocalPlayerInputIdFactory*) [LocalPlayerInputIdFactory alloc]) init]);
}

@implementation LocalPlayerInputIdFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->MAX_NUMBER_OF_PLAYERS = 6;
    self->MAX_FAST_DEVICEID = 65;
    self->deviceIdToplayerId = ((int32_t*) java_array_new(sizeof(int32_t), self->MAX_FAST_DEVICEID));
    self->playerIdToDeviceId = ((int32_t*) java_array_new(sizeof(int32_t), self->MAX_NUMBER_OF_PLAYERS));
    self->playersInPlay = ((bool*) java_array_new(sizeof(bool), self->MAX_NUMBER_OF_PLAYERS));
    self->totalDevicesMapped = 0;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        for (int32_t index = java_array_length(self->deviceIdToplayerId) - 1; index >= 0; index--) {
            self->deviceIdToplayerId[index] = -1;
        }
    return self;
}


+ (LocalPlayerInputIdFactory*) getInstance {
        return (LocalPlayerInputIdFactory_staticInit(), LocalPlayerInputIdFactory_instance);
}


- (int32_t) getDeviceId:(int32_t)playerInputId {
        return self->playerIdToDeviceId[playerInputId];
}


- (int32_t) getPlayerForDevice:(int32_t)deviceId {
        int32_t index = 0;
        if (deviceId < self->MAX_FAST_DEVICEID) {
            int32_t playerInputId = self->deviceIdToplayerId[deviceId];
            if (playerInputId != -1) {
                return playerInputId;
            }
        } else {
            for (index = self->totalDevicesMapped - 1; index >= 0; index--) {
                if (self->playerIdToDeviceId[index] == deviceId) {
                    return index;
                }
            }
        }
        index = self->totalDevicesMapped;
        if (deviceId < self->MAX_FAST_DEVICEID) {
            self->deviceIdToplayerId[deviceId] = index;
        } else {
            [self->logUtil putF:[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Added DeviceId: "] appendint:deviceId] append:" beyond fast Id list"] toString] :self :"getPlayerForDevice"];
        }
        self->playerIdToDeviceId[index] = deviceId;
        [[AnalogLocationInputFactory getInstance] addPlayer:self->totalDevicesMapped];
        self->totalDevicesMapped++;
        [self->logUtil putF:[[[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Added DeviceId: "] appendint:deviceId] append:" at: "] appendint:index] append:" Total: "] appendint:self->totalDevicesMapped] toString] :self :"getPlayerForDevice"];
        return index;
}


- (int32_t) getTotalDevicesInPlay {
        int32_t total = 0;
        for (int32_t index = self->totalDevicesMapped - 1; index >= 0; index--) {
            if (self->playersInPlay[index] == true) {
                total++;
            }
        }
        return total;
}


- (bool) isPlayerInPlay:(int32_t)playerInputId {
        return self->playersInPlay[playerInputId];
}


- (void) setPlayerInPlay:(int32_t)playerInputId {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Setting PlayerInPlay with playerInputId: "] appendint:playerInputId] toString] :self :"setPlayerInPlay"];
        self->playersInPlay[playerInputId] = true;
}


- (void) setPlayerOutOfPlay:(int32_t)playerInputId {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Setting PlayerOutOfPlay with playerInputId: "] appendint:playerInputId] toString] :self :"setPlayerOutOfPlay"];
        self->playersInPlay[playerInputId] = false;
}


- (bool*) getPlayersInPlay {
        return self->playersInPlay;
}

@end

