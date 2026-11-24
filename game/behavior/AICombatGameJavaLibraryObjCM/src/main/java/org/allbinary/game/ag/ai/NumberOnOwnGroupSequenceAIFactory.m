// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/NumberOnOwnGroupSequenceAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/ag/ai/NumberInSameGroupSequence.h"
#include "org/allbinary/game/ag/ai/NumberOnOwnGroupSequenceAI.h"



void NumberOnOwnGroupSequenceAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NumberOnOwnGroupSequenceAIFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(ArtificialIntelligenceInterface**)artificialIntelligenceInterface :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        int32_t* integerArray = [NumberInSameGroupSequence getInstance]->NUMBER_ON_SAME_TEAM_SEQUENCE;
        BasicArrayList* list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        for (int32_t index = 0; index < java_array_length(integerArray); index++) {
            id integerCanBeNull = [hashtable get:JAVA_BOX(((id) integerArray[index]))];
            if (integerCanBeNull == nil) {
                break;
            }
            [list add:integerCanBeNull];
        }
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Total AI Properties: "];
        [stringBuffer appendint:[list size]];
        [stringBuffer append:" == Total AI: "];
        [stringBuffer appendint:java_array_length(artificialIntelligenceInterface)];
        [stringBuffer append:" + 1"];
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [self->logUtil putF:[stringBuffer toString] :self :commonStrings->GET_INSTANCE];
        if (java_array_length(artificialIntelligenceInterface) - 1 > [list size]) {
            java_throw(java_exception_new("Exception", "Not enough AI properties."));
        }
        if (java_array_length(artificialIntelligenceInterface) - 1 < [list size]) {
            java_throw(java_exception_new("Exception", "Too Many AI properties."));
        }
        int32_t* numberOnSameTeam = ((int32_t*) java_array_new(sizeof(int32_t), [list size]));
        for (int32_t index = 0; index < java_array_length(numberOnSameTeam); index++) {
            numberOnSameTeam[index] = ((int32_t) list->objectArray[index]);
        }
        return ((NumberOnOwnGroupSequenceAI*) [((NumberOnOwnGroupSequenceAI*) [NumberOnOwnGroupSequenceAI alloc]) init:numberOnSameTeam :artificialIntelligenceInterface :ownerLayerInterface :gameInput]);
}

@end

