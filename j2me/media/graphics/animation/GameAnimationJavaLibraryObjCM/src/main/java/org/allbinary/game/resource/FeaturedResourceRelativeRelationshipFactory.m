// Generated Code Do Not Modify
#include "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/RelativeRelationship.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/relationship/RelativeLayerRelationship.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/game/resource/FeaturedResourceFactory.h"
#include "org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface.h"


static FeaturedResourceRelativeRelationshipFactory* FeaturedResourceRelativeRelationshipFactory_INSTANCE;

void FeaturedResourceRelativeRelationshipFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FeaturedResourceRelativeRelationshipFactory_INSTANCE = [((FeaturedResourceRelativeRelationshipFactory*) [FeaturedResourceRelativeRelationshipFactory alloc]) init];
}

@implementation FeaturedResourceRelativeRelationshipFactory

- (void) initFields {
    self->basicArrayListUtil = [BasicArrayListUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (FeaturedResourceRelativeRelationshipFactory*) getInstance {
        return (FeaturedResourceRelativeRelationshipFactory_staticInit(), FeaturedResourceRelativeRelationshipFactory_INSTANCE);
}


// throws Exception
- (BasicArrayList*) getRelativeRelationshipList:(const char*)resource :(AllBinaryLayer*)layer {
        BasicArrayList* featureReleaseList = [self getList];
        int32_t size = [[self getList] size];
        for (int32_t index = 0; index < size; index++) {
            ResourceRelativeRelationshipFactoryInterface* featureInterface = ((ResourceRelativeRelationshipFactoryInterface*) featureReleaseList->objectArray[index]);
            if ([featureInterface isFeature]) {
                BasicArrayList* list = [featureInterface getResourceRelativeRelationshipList:resource];
                if (list != [self->basicArrayListUtil getImmutableInstance]) {
                    return [self duplicate:list :layer];
                }
            }
        }
        java_throw(java_exception_new("Exception", [[[[((StringMaker*) [StringMaker alloc]) init] append:"Not available for current feature selection or Resource: "] append:resource] toString]));
}


// throws Exception
- (BasicArrayList*) duplicate:(BasicArrayList*)list :(AllBinaryLayer*)layer {
        PointFactory* pointFactory = [PointFactory getInstance];
        BasicArrayList* newList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            RelativeRelationship* relativeRelationship = ((RelativeRelationship*) list->objectArray[index]);
            [newList add:[((RelativeLayerRelationship*) [RelativeLayerRelationship alloc]) init:layer :[pointFactory createXY:[relativeRelationship getX] :[relativeRelationship getY]] :[[BasicArrayListUtil getInstance] getImmutableInstance]]];
        }
        return newList;
}

@end

