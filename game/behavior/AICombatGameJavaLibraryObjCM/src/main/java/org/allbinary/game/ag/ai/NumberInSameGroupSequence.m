// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/NumberInSameGroupSequence.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"



void NumberInSameGroupSequence_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NumberInSameGroupSequence

- (void) initFields {
    
    
    
    
    
    
    
    
    
    
    
}


+ (NumberInSameGroupSequence*) getInstance {
        return [((NumberInSameGroupSequence*) [NumberInSameGroupSequence alloc]) init];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = [smallIntegerSingletonFactory getAt:100];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = [smallIntegerSingletonFactory getAt:101];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = [smallIntegerSingletonFactory getAt:102];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = [smallIntegerSingletonFactory getAt:103];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = [smallIntegerSingletonFactory getAt:104];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = [smallIntegerSingletonFactory getAt:105];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = [smallIntegerSingletonFactory getAt:106];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = [smallIntegerSingletonFactory getAt:107];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = [smallIntegerSingletonFactory getAt:108];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = [smallIntegerSingletonFactory getAt:109];
        self->NUMBER_ON_SAME_TEAM_SEQUENCE = ((int32_t*) java_array_from(sizeof(int32_t), sizeof((int32_t[]){ self->NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, self->NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, self->NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, self->NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, self->NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, self->NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, self->NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, self->NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, self->NUMBER_ON_SAME_TEAM_SEQUENCE_NINE }) / sizeof(int32_t), (int32_t[]){ self->NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, self->NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, self->NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, self->NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, self->NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, self->NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, self->NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, self->NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, self->NUMBER_ON_SAME_TEAM_SEQUENCE_NINE }));
    return self;
}

@end

