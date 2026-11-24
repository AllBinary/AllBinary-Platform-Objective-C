// Generated Code Do Not Modify
#include "org/allbinary/animation/text/TextChangeListener.h"


static TextChangeListener* TextChangeListener_instance;

void TextChangeListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TextChangeListener_instance = ((TextChangeListener*) [((TextChangeListener*) [TextChangeListener alloc]) init]);
}

@implementation TextChangeListener

- (instancetype) init {
    self = [super init];
    return self;
}


+ (TextChangeListener*) getInstance {
        return (TextChangeListener_staticInit(), TextChangeListener_instance);
}


- (void) onMeasure {
}

@end

