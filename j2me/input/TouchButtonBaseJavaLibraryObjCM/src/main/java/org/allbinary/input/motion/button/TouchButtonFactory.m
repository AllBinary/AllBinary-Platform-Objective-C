// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonFactory.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"


static TouchButtonFactory* TouchButtonFactory_SINGLETON;

void TouchButtonFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonFactory_SINGLETON = [((TouchButtonFactory*) [TouchButtonFactory alloc]) init];
}

@implementation TouchButtonFactory

- (void) initFields {
    self->LIST = [[BasicArrayListUtil getInstance] getImmutableInstance];
    self->list = self->LIST;
    self->savedList = self->LIST;
    self->saved = false;
}


+ (TouchButtonFactory*) getInstance {
        return (TouchButtonFactory_staticInit(), TouchButtonFactory_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) defaultList {
        self->list = self->LIST;
        [self toggle:false :self->LIST];
}


// synchronized
- (void) toggle:(bool)save :(BasicArrayList*)list {
        if (list != [[BasicArrayListUtil getInstance] getImmutableInstance]) {
            self->savedList = list;
            if (!self->saved) {
                self->list = self->savedList;
            }
        } else {
            if (save) {
                if (!self->saved) {
                    self->saved = true;
                    self->savedList = self->list;
                    self->list = self->LIST;
                } else {
                }
            } else {
                self->list = self->savedList;
                self->saved = false;
            }
        }
}


// throws Exception
- (void) setList:(BasicArrayList*)list {
        if (list == nil) {
            java_throw(java_exception_new("Exception", "Null List"));
        }
        self->list = list;
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

