// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/LockableFormPaintableFactory.h"
#include "org/allbinary/graphics/form/ItemPaintableFactory.h"
#include "org/allbinary/graphics/form/LockablePaintable.h"
#include "org/allbinary/graphics/form/ItemPaintable.h"
#include "org/allbinary/graphics/form/PaintableForm.h"



void LockableFormPaintableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LockableFormPaintableFactory

- (void) initFields {
    
}


- (instancetype) init:(int32_t)lockedIndex {
    self = [super init];
    [self initFields];
        self->lockedIndex = lockedIndex;
    return self;
}


// throws Exception
- (ItemPaintable*) getInstanceItemPaintable:(PaintableForm*)paintableForm {
        return [((LockablePaintable*) [LockablePaintable alloc]) init:self->lockedIndex];
}

@end

