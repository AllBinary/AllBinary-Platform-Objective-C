// Generated Code Do Not Modify
#include "org/allbinary/business/advertisement/Advertisements.h"
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/logic/system/security/licensing/LockedUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/business/advertisement/AdvertisementProcessorInterface.h"



void Advertisements_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Advertisements

- (void) initFields {
    self->bannerList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->pageList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->myRandomFactory = [MyRandomFactory getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addPage:(AdvertisementProcessorInterface*)advertisementProcessorInterface {
        if (![self->pageList contains:advertisementProcessorInterface]) {
            [self->pageList add:advertisementProcessorInterface];
        }
}


- (void) startRandomPage {
        int32_t size = [self->pageList size];
        if (size > 0) {
            int32_t random = [self->myRandomFactory getAbsoluteNextInt:size];
            AdvertisementProcessorInterface* advertisementProcessorInterface = ((AdvertisementProcessorInterface*) self->pageList->objectArray[random]);
            [advertisementProcessorInterface start];
        }
}


- (void) processRandomPage {
        if ([[LockedUtil getInstance] isLocked]) {
            int32_t size = [self->pageList size];
            if (size > 0) {
                int32_t random = [self->myRandomFactory getAbsoluteNextInt:size];
                AdvertisementProcessorInterface* advertisementProcessorInterface = ((AdvertisementProcessorInterface*) self->pageList->objectArray[random]);
                [advertisementProcessorInterface process];
            }
        }
}


- (void) stopAllPage {
        for (int32_t index = [self->pageList size]; --index >= 0; ) {
            AdvertisementProcessorInterface* advertisementProcessorInterface = ((AdvertisementProcessorInterface*) self->pageList->objectArray[index]);
            [advertisementProcessorInterface stop];
        }
}


- (void) addBanner:(AdvertisementProcessorInterface*)advertisementProcessorInterface {
        if (![self->bannerList contains:advertisementProcessorInterface]) {
            [self->bannerList add:advertisementProcessorInterface];
        }
}


- (void) startAll {
        for (int32_t index = [self->bannerList size]; --index >= 0; ) {
            AdvertisementProcessorInterface* advertisementProcessorInterface = ((AdvertisementProcessorInterface*) self->bannerList->objectArray[index]);
            [advertisementProcessorInterface start];
        }
}


- (void) stopAllBanner {
        for (int32_t index = [self->bannerList size]; --index >= 0; ) {
            AdvertisementProcessorInterface* advertisementProcessorInterface = ((AdvertisementProcessorInterface*) self->bannerList->objectArray[index]);
            [advertisementProcessorInterface stop];
        }
}


- (AdvertisementProcessorInterface*) getBanner:(int32_t)index {
        AdvertisementProcessorInterface* advertisementProcessorInterface = ((AdvertisementProcessorInterface*) self->bannerList->objectArray[index]);
        return advertisementProcessorInterface;
}


- (void) stopAll {
        [self stopAllBanner];
        [self stopAllPage];
}

@end

