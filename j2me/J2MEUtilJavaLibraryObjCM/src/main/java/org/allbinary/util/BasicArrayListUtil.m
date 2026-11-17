// Generated Code Do Not Modify
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonPhoneStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/ImmutableBasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


static BasicArrayListUtil* BasicArrayListUtil_instance;

void BasicArrayListUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicArrayListUtil_instance = [((BasicArrayListUtil*) [BasicArrayListUtil alloc]) init];
}

@implementation BasicArrayListUtil

- (void) initFields {
    self->NULL_ARRAY_OF_ARRAY = ((BasicArrayList***) java_array_new2(sizeof(BasicArrayList*), 0, 0));
    self->myRandomFactory = [MyRandomFactory getInstance];
    self->immutableInstance = [((ImmutableBasicArrayList*) [ImmutableBasicArrayList alloc]) init:"Immutable" :0];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicArrayListUtil*) getInstance {
        return (BasicArrayListUtil_staticInit(), BasicArrayListUtil_instance);
}


- (id) getRandom:(BasicArrayList*)list {
        int32_t i_random = [self getRandomIndex:list];
        return list->objectArray[i_random];
}


- (int32_t) getRandomIndex:(BasicArrayList*)list {
        return [self->myRandomFactory getAbsoluteNextInt:[list size]];
}


- (void) reverse:(BasicArrayList*)list {
        int32_t lastMinusOneIndex = [list size] - 2;
        id temp = nullptr;
        int32_t size = lastMinusOneIndex / 2;
        int32_t secondSwapIndex = 0;
        for (int32_t index = 0; index <= size; index++) {
            secondSwapIndex = lastMinusOneIndex - index;
            temp = [list removeAt:index];
            [list addAt:index :[list removeAt:secondSwapIndex]];
            [list addAt:secondSwapIndex + 1 :temp];
        }
}


- (const char*) log:(BasicArrayList*)list {
        const char* S_LABEL = " s: ";
        int32_t size = [list size];
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:[CommonLabels getInstance]->TOTAL_LABEL];
        [stringBuffer appendint:size];
        for (int32_t index = size - 1; index >= 0; index--) {
            BasicArrayList* usedList = ((BasicArrayList*) list->objectArray[index]);
            [stringBuffer append:S_LABEL];
            [stringBuffer appendint:[usedList size]];
        }
        return [stringBuffer toString];
}


- (BasicArrayList*) getImmutableInstance {
        return self->immutableInstance;
}


+ (void) main:(const char**)args {
        CommonPhoneStrings* commonPhoneStrings = [CommonPhoneStrings getInstance];
        BasicArrayList* list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        [list add:commonPhoneStrings->ONE];
        [list add:commonPhoneStrings->TWO];
        [list add:commonPhoneStrings->THREE];
        [list add:commonPhoneStrings->FOUR];
        [list add:commonPhoneStrings->FIVE];
        [list add:commonPhoneStrings->SIX];
        [list add:commonPhoneStrings->SEVEN];
        [list add:commonPhoneStrings->EIGHT];
        [list add:commonPhoneStrings->NINE];
        [[BasicArrayListUtil getInstance] reverse:list];
        puts(java_string_of([list toString]));
}

@end

