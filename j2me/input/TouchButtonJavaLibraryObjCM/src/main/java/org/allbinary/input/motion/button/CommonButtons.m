// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/CommonButtons.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif


static CommonButtons* CommonButtons_instance;

void CommonButtons_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CommonButtons_instance = ((CommonButtons*) [((CommonButtons*) [CommonButtons alloc]) init]);
}

@implementation CommonButtons

- (void) initFields {
    
    
    
}


+ (CommonButtons*) getInstance {
        return (CommonButtons_staticInit(), CommonButtons_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        int32_t commonButtonSize = 128;
        while (commonButtonSize > 64) {
            int32_t totalColumns = [displayInfo getLastWidth] / commonButtonSize;
            int32_t totalRows = [displayInfo getLastHeight] / commonButtonSize;
            int32_t max = totalColumns;
            if (totalRows > max) {
                max = totalRows;
            }
            if (max > 9) {
                break;
            }
            commonButtonSize = commonButtonSize >> 1;
        }
        self->STANDARD_BUTTON_SIZE = commonButtonSize;
        self->NORMAL_BUTTON = ((Rectangle*) [((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :self->STANDARD_BUTTON_SIZE :self->STANDARD_BUTTON_SIZE]);
        self->LARGE_BUTTON = ((Rectangle*) [((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :self->STANDARD_BUTTON_SIZE << 1 :self->STANDARD_BUTTON_SIZE << 1]);
    return self;
}

@end

