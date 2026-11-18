// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/FormUtil.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"


static FormUtil* FormUtil_instance;

void FormUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FormUtil_instance = [((FormUtil*) [FormUtil alloc]) init];
}

@implementation FormUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (FormUtil*) getInstance {
        return (FormUtil_staticInit(), FormUtil_instance);
}


- (Rectangle*) createFormRectangle {
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        PointFactory* pointFactory = [PointFactory getInstance];
        Rectangle* rectangle = [((Rectangle*) [Rectangle alloc]) init:[pointFactory createXY:30 :10] :[displayInfo getLastWidth] - 30 :[displayInfo getLastHeight] - 35];
        return rectangle;
}

@end

