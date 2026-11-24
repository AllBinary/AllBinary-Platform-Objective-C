// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/validation/TextItemNumberVisitor.h"
#include "org/allbinary/game/input/TextNotificationUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif
#if __has_include("org/allbinary/game/input/TextNotificationUtil.h")
#include "org/allbinary/game/input/TextNotificationUtil.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/BooleanFactory.h")
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#endif



void TextItemNumberVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TextItemNumberVisitor

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
            StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
            if ([stringValidationUtil isNumber:value]) {
                return JAVA_BOX([BooleanFactory getInstance]->TRUE);
            } else {
                JAVA_TRY {
                    [[TextNotificationUtil getInstance] fireError:"Numbers Only"];
                } JAVA_CATCH(Exception, e) {
                    CommonStrings* commonStrings = [CommonStrings getInstance];
                    [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->VISIT :e];
                } JAVA_END_TRY;
                return JAVA_BOX([BooleanFactory getInstance]->FALSE);
            }
        } else {
            return JAVA_BOX([BooleanFactory getInstance]->FALSE);
        }
}

@end

