// Generated Code Do Not Modify
#include "org/allbinary/game/identification/CompositeGroup.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/identification/Group.h"
#include "org/allbinary/game/identification/GroupCommonFactory.h"



void CompositeGroup_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CompositeGroup

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


- (instancetype) init:(Group*)groupInterface {
    self = [super init];
    [self initFields];
        self->groupInterface = groupInterface;
    return self;
}


- (void) clear {
        [self->list clear];
}


- (void) add:(Group*)groupInterface {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        GroupCommonFactory* groupCommonFactory = [GroupCommonFactory getInstance];
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:groupCommonFactory->ADDING_LABEL];
        [stringBuffer append:[groupInterface toString]];
        [stringBuffer append:groupCommonFactory->TO_LABEL];
        [stringBuffer append:[[StringUtil getInstance] toString:self->groupInterface]];
        [self->logUtil putF:[stringBuffer toString] :self :commonStrings->ADD];
        [self->list add:groupInterface];
}


- (bool) isInGroup:(Group*)groupInterface {
        if ([self->list contains:groupInterface]) {
            return true;
        } else {
            return false;
        }
}


- (Group*) getGroup {
        return self->groupInterface;
}

@end

