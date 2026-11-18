// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/TouchFeatureFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.h"
#include "org/allbinary/graphics/form/CommandCurrentSelectionForm.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/graphics/form/FormType.h"



void CommandCurrentSelectionFormFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CommandCurrentSelectionFormFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (ScrollSelectionForm*) getInstance:(const char*)title :(ABCustomItem**)items :(Rectangle*)rectangle :(FormType*)formType :(int32_t)border :(bool)moveForSmallScreen :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        if ([[Features getInstance] isFeature:[TouchFeatureFactory getInstance]->TOUCH_ENABLED]) {
            ScrollSelectionForm* scrollSelectionForm = [((CommandCurrentSelectionForm*) [CommandCurrentSelectionForm alloc]) init:title :items :border :moveForSmallScreen :backgroundBasicColor :foregroundBasicColor];
            [scrollSelectionForm init_:rectangle :formType];
            return scrollSelectionForm;
        } else {
            return [ScrollSelectionFormNoneFactory getInstance];
        }
}

@end

