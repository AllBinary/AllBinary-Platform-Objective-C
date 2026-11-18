// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/GameFeature.h"
#include "org/allbinary/game/configuration/feature/Feature.h"


static GameFeatureFactory* GameFeatureFactory_instance;

void GameFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameFeatureFactory_instance = [((GameFeatureFactory*) [GameFeatureFactory alloc]) init];
}

@implementation GameFeatureFactory

- (void) initFields {
    self->SOUND = [((GameFeature*) [GameFeature alloc]) init:"Sound"];
    self->MUSIC = [((GameFeature*) [GameFeature alloc]) init:"Music"];
    self->SCREEN_SHAKE = [((Feature*) [Feature alloc]) init:"Screen Shake"];
    self->POST_IMAGE_LOADING_MODIFICATION = [((Feature*) [Feature alloc]) init:"Post Image Loading Modification (Scaling, Rotation, or Other)"];
    self->HEALTH_BARS = [((GameFeature*) [GameFeature alloc]) init:"Health Bars"];
    self->DAMAGE_FLOATERS = [((GameFeature*) [GameFeature alloc]) init:"Damage Floaters"];
    self->GAME_INPUT_LAYER_PROCESSOR = [((GameFeature*) [GameFeature alloc]) init:"Game Input Layer Processor"];
    self->ARTIFICIAL_INTELLEGENCE_PROCESSOR = [((GameFeature*) [GameFeature alloc]) init:"Artificial Intelligence Layer Processor"];
    self->COLLIDABLE_INTERFACE_LAYER_PROCESSOR = [((GameFeature*) [GameFeature alloc]) init:"Collidable Interface Layer Processor"];
    self->TICKABLE_LAYER_PROCESSOR = [((GameFeature*) [GameFeature alloc]) init:"Tickable Layer Processor"];
    self->CHEATING = [((GameFeature*) [GameFeature alloc]) init:"Cheating"];
    self->DROPPED_ITEMS = [((GameFeature*) [GameFeature alloc]) init:"Drops"];
    self->DROPPED_ITEMS_FROM_DEATH = [((GameFeature*) [GameFeature alloc]) init:"Drops from Dead"];
    self->TEST_DESTROYED_LAYER_PROCESSOR = [((GameFeature*) [GameFeature alloc]) init:"Destroyed Layer Processor"];
    self->COLLISIONS_WITH_SOURCE = [((GameFeature*) [GameFeature alloc]) init:"Allow Collisions With Source"];
    self->COLLISIONS_FORCED_TWO_DIMENSIONAL = [((GameFeature*) [GameFeature alloc]) init:"Collisions Forced Two Dimensional"];
}


+ (GameFeatureFactory*) getInstance {
        return (GameFeatureFactory_staticInit(), GameFeatureFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

