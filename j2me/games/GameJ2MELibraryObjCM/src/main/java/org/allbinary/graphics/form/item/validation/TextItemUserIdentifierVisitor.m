// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/validation/TextItemUserIdentifierVisitor.h"
#include "org/allbinary/game/input/TextNotificationUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/string/CommonStrings.h"



void TextItemUserIdentifierVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TextItemUserIdentifierVisitor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (id) visit:(id)anyType {
        const char* value = ((const char*) anyType);
        if (((int32_t) strlen(value)) < 2) {
            uint16_t charValue = ((uint16_t) value[0]);
            StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
            if ([stringValidationUtil isNumber:value]) {
                return [BooleanFactory getInstance]->TRUE;
            } else if ([self isLetter:charValue]) {
                return [BooleanFactory getInstance]->TRUE;
            } else {
                JAVA_TRY {
                    [[TextNotificationUtil getInstance] fireError:"Only Letters & Numbers Allowed"];
                } JAVA_CATCH(Exception, e) {
                    CommonStrings* commonStrings = [CommonStrings getInstance];
                    [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->VISIT :e];
                } JAVA_END_TRY;
                return [BooleanFactory getInstance]->FALSE;
            }
        } else {
            return [BooleanFactory getInstance]->FALSE;
        }
}


- (bool) isLetter:(uint16_t)charValue {
        int32_t value = ((int32_t) charValue);
        return (value > 64 && value < 91) || (value > 96 && value < 123);
}

@end

