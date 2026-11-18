// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/PickupBehavior.h"
#include "org/allbinary/game/health/HealthInterfaceCompositeInterface.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#include "org/allbinary/game/part/CountedLayerInterfaceFactoryPart.h"
#include "org/allbinary/game/part/PartInterface.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/layer/pickup/PickupBehaviorInterface.h"
#include "org/allbinary/game/layer/pickup/PickupProcessorInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerType.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterface.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#if __has_include("org/allbinary/game/layer/pickup/Health.h")
#include "org/allbinary/game/layer/pickup/Health.h"
#endif
#if __has_include("org/allbinary/game/health/Health.h")
#include "org/allbinary/game/health/Health.h"
#endif
#if __has_include("org/allbinary/game/layer/Health.h")
#include "org/allbinary/game/layer/Health.h"
#endif
#if __has_include("org/allbinary/game/layer/special/Health.h")
#include "org/allbinary/game/layer/special/Health.h"
#endif
#if __has_include("org/allbinary/game/part/Health.h")
#include "org/allbinary/game/part/Health.h"
#endif
#if __has_include("org/allbinary/game/part/Health.h")
#include "org/allbinary/game/part/Health.h"
#endif
#if __has_include("org/allbinary/logic/Health.h")
#include "org/allbinary/logic/Health.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Health.h")
#include "org/allbinary/logic/communication/log/Health.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Health.h")
#include "org/allbinary/logic/communication/log/Health.h"
#endif
#if __has_include("org/allbinary/string/Health.h")
#include "org/allbinary/string/Health.h"
#endif


id PickupBehavior_NULL_PICKUP_BEHAVIOR;

void PickupBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PickupBehavior_NULL_PICKUP_BEHAVIOR = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation PickupBehavior

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    
}


+ (PickupBehavior*) getNullInstance {
        if ((PickupBehavior_staticInit(), PickupBehavior_NULL_PICKUP_BEHAVIOR) == [NullUtil getInstance]->NULL_OBJECT) {
            PickupBehavior_NULL_PICKUP_BEHAVIOR = [((PickupBehavior*) [PickupBehavior alloc]) init:[CollidableCompositeLayer getNullInstance] :0];
        }
        return ((PickupBehavior*) (PickupBehavior_staticInit(), PickupBehavior_NULL_PICKUP_BEHAVIOR));
}


- (instancetype) init:(CollidableCompositeLayer*)ownerLayerInterface :(int32_t)countedIndex {
    self = [super init];
    [self initFields];
        self->ownerLayerInterface = ownerLayerInterface;
        self->countedIndex = countedIndex;
    return self;
}


- (void) doPickup:(PickupProcessorInterface*)pickupProcessorInterface {
        JAVA_TRY {
            HealthInterfaceCompositeInterface* healthInterfaceCompositeInterface = ((HealthInterfaceCompositeInterface*) self->ownerLayerInterface);
            if ([[healthInterfaceCompositeInterface getHealthInterface] isAlive]) {
                [pickupProcessorInterface process:self->ownerLayerInterface];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"doPickup" :e];
        } JAVA_END_TRY;
}


- (void) doPickupLayer:(PickedUpLayerInterface*)pickupLayerInterface {
        JAVA_TRY {
            PickedUpLayerInterfaceFactoryInterface* pickedUpLayerInterfaceFactoryInterface = [pickupLayerInterface getPickedUpLayerInterfaceFactoryInterface];
            PickedUpLayerType* pickedUpLayerType = [pickedUpLayerInterfaceFactoryInterface getPickedUpLayerType];
            PickedUpLayerTypeFactory* pickedUpLayerTypeFactory = [PickedUpLayerTypeFactory getInstance];
            if (pickedUpLayerType == pickedUpLayerTypeFactory->BEAM || pickedUpLayerType == pickedUpLayerTypeFactory->MINE || pickedUpLayerType == pickedUpLayerTypeFactory->PROJECTILE || pickedUpLayerType == pickedUpLayerTypeFactory->ENHANCEMENT) {
                [self add:((CountedPickedUpLayerInterfaceFactoryInterface*) pickedUpLayerInterfaceFactoryInterface)];
            } else if ([pickedUpLayerInterfaceFactoryInterface getPickedUpLayerType] == pickedUpLayerTypeFactory->PART) {
                CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) self->ownerLayerInterface);
                [collidableDestroyableDamageableLayer addPart:pickedUpLayerInterfaceFactoryInterface];
            } else if (pickedUpLayerType == pickedUpLayerTypeFactory->NONE) {
            } else {
                PickupProcessorInterface* pickupProcessorInterface = ((PickupProcessorInterface*) pickedUpLayerInterfaceFactoryInterface);
                [self doPickup:pickupProcessorInterface];
            }
            [pickupLayerInterface setPickedUp];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil putOE:commonStrings->EXCEPTION :self :"doPickup" :e];
        } JAVA_END_TRY;
}


- (void) add:(CountedPickedUpLayerInterfaceFactoryInterface*)countedPickedUpLayerInterfaceFactoryInterface {
        int32_t partIndex = [countedPickedUpLayerInterfaceFactoryInterface getId] + self->countedIndex;
        [self addAt:countedPickedUpLayerInterfaceFactoryInterface :partIndex];
}


- (void) addAt:(CountedPickedUpLayerInterfaceFactoryInterface*)countedPickedUpLayerInterfaceFactoryInterface :(int32_t)partIndex {
        CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) self->ownerLayerInterface);
        CountedLayerInterfaceFactoryPart* countedLayerInterfaceFactory = ((CountedLayerInterfaceFactoryPart*) [collidableDestroyableDamageableLayer getPartInterfaceArray][partIndex]);
        [countedLayerInterfaceFactory setTotal:[countedLayerInterfaceFactory getTotal] + [countedPickedUpLayerInterfaceFactoryInterface getTotal]];
}


- (CountedLayerInterfaceFactoryPart*) getFirstAvailableCountedLayerInterfaceFactory:(PickedUpLayerType**)pickedUpLayerTypeArray {
        CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) self->ownerLayerInterface);
        PartInterface** partInterfaceArray = [collidableDestroyableDamageableLayer getPartInterfaceArray];
        int32_t size = java_array_length(partInterfaceArray);
        CountedLayerInterfaceFactoryPart* nextCountedLayerInterfaceFactory = nullptr;
        CountedPickedUpLayerInterfaceFactory* countedPickedUpLayerInterfaceFactory = nullptr;
        for (int32_t index = self->countedIndex; index < size; index++) {
            nextCountedLayerInterfaceFactory = ((CountedLayerInterfaceFactoryPart*) [collidableDestroyableDamageableLayer getPartInterfaceArray][index]);
            countedPickedUpLayerInterfaceFactory = [nextCountedLayerInterfaceFactory getCountedPickedUpLayerInterfaceFactory];
            for (int32_t index2 = java_array_length(pickedUpLayerTypeArray); --index2 >= 0; ) {
                if ([countedPickedUpLayerInterfaceFactory getPickedUpLayerType] == pickedUpLayerTypeArray[index2]) {
                    if ([nextCountedLayerInterfaceFactory getTotal] > 0) {
                        return nextCountedLayerInterfaceFactory;
                    }
                }
            }
        }
        return (CountedLayerInterfaceFactoryPart_staticInit(), CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORY);
}


// throws Exception
- (CountedLayerInterfaceFactoryPart*) getCountedLayerInterfaceFactoryForSlot:(int32_t)slotIndex {
        int32_t currentSlot = 0;
        CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer*) self->ownerLayerInterface);
        PartInterface** partInterfaceArray = [collidableDestroyableDamageableLayer getPartInterfaceArray];
        int32_t size = java_array_length(partInterfaceArray);
        CountedLayerInterfaceFactoryPart* nextCountedLayerInterfaceFactory = nullptr;
        for (int32_t index = self->countedIndex; index < size; index++) {
            nextCountedLayerInterfaceFactory = ((CountedLayerInterfaceFactoryPart*) [collidableDestroyableDamageableLayer getPartInterfaceArray][index]);
            if ([nextCountedLayerInterfaceFactory getTotal] > 0) {
                if (currentSlot == slotIndex) {
                    return nextCountedLayerInterfaceFactory;
                } else {
                    currentSlot++;
                }
            }
        }
        return (CountedLayerInterfaceFactoryPart_staticInit(), CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORY);
}


- (int32_t) getCountedIndex {
        return self->countedIndex;
}

@end

