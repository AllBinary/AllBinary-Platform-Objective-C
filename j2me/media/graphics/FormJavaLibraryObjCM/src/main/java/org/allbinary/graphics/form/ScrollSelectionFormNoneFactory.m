// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"



void ScrollSelectionFormNoneFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScrollSelectionFormNoneFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ScrollSelectionForm*) getInstance {
        return [ScrollSelectionForm getNullScrollSelectionFormHorizontal];
}

@end

