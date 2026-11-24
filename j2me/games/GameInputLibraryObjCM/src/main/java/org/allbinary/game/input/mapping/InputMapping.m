// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/InputMapping.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif



void InputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation InputMapping

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->hashtable = [[StdUtil getInstance] createHashtable];
    self->mappedList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (int32_t) getTotalMapped {
        return [self->hashtable size];
}


- (bool) isDefaultNew {
        return false;
}


- (InputToGameKeyMapping*) getDefault {
        return [InputToGameKeyMapping getNullInstance];
}


- (void) removeAll {
        [self->hashtable clear];
        [self->mappedList clear];
}


- (void) remove:(Input*)input :(Input*)mappedToInput {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        StringUtil* stringUtil = [StringUtil getInstance];
        [stringBuffer append:[CommonLabels getInstance]->START_LABEL];
        [stringBuffer append:[stringUtil toString:input]];
        [stringBuffer append:" == "];
        [stringBuffer append:[stringUtil toString:mappedToInput]];
        [self->logUtil putF:[stringBuffer toString] :self :"InputMapping::remove"];
        BasicArrayList* list = [self getMappedInput:input];
        if ([list contains:mappedToInput]) {
            [list remove:mappedToInput];
            [self->mappedList remove:mappedToInput];
            [stringBuffer delete:0 :[stringBuffer length]];
            [stringBuffer append:"Removed: "];
            [stringBuffer append:[stringUtil toString:input]];
            [stringBuffer append:" == "];
            [stringBuffer append:[stringUtil toString:mappedToInput]];
            [self->logUtil putF:[stringBuffer toString] :self :"InputMapping::remove"];
        } else {
            [stringBuffer delete:0 :[stringBuffer length]];
            [stringBuffer append:"Not Deleted: "];
            [stringBuffer append:[stringUtil toString:input]];
            [stringBuffer append:" == "];
            [stringBuffer append:[stringUtil toString:mappedToInput]];
            [self->logUtil putF:[stringBuffer toString] :self :"InputMapping::remove"];
        }
}


// throws Exception
- (void) addMapping:(InputToGameKeyMapping*)inputToGameKeyMapping {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (void) add:(Input*)input :(Input*)mappedToInput {
        BasicArrayList* list = [self getMappedInput:input];
        if (![list contains:mappedToInput]) {
            [list add:mappedToInput];
            [self->mappedList add:mappedToInput];
        }
}


- (bool) isMapped:(Input*)input {
        return [self->mappedList contains:input];
}


- (BasicArrayList*) getMappedInput:(Input*)id_ {
        id mappingInputCanBeNullList = [self->hashtable get:JAVA_BOX(id_)];
        if (mappingInputCanBeNullList == nil) {
            BasicArrayList* list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            [self->hashtable put:JAVA_BOX(id_) :JAVA_BOX(list)];
            return list;
        }
        return ((BasicArrayList*) mappingInputCanBeNullList);
}


- (ABHashtable*) getHashtable {
        return self->hashtable;
}

@end

