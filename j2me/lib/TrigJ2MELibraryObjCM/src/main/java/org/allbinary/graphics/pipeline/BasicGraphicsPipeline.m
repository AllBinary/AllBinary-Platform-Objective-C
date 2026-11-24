// Generated Code Do Not Modify
#include "org/allbinary/graphics/pipeline/BasicGraphicsPipeline.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/NoDecimalTrigTable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"



void BasicGraphicsPipeline_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicGraphicsPipeline

- (void) initFields {
    
    self->noDecimalTrigTable = [NoDecimalTrigTable getInstance];
}


- (instancetype) init:(BasicArrayList*)points {
    self = [super init];
    [self initFields];
        self->pointBasicArrayList = points;
    return self;
}


- (void) setInitMatrix:(BasicArrayList*)points {
        self->pointBasicArrayList = points;
}


- (void) createMatrix {
}


// throws Exception
- (void) translate:(int32_t)x :(int32_t)y {
        BasicArrayList* newBasicArrayList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        int32_t size = [self->pointBasicArrayList size];
        PointFactory* pointFactory = [PointFactory getInstance];
        GPoint* secondPoint = nullptr;
        for (int32_t index = 0; index < size; index++) {
            secondPoint = ((GPoint*) self->pointBasicArrayList->objectArray[index]);
            if ([secondPoint getX] != 1000) {
                [newBasicArrayList add:[pointFactory createXY:[secondPoint getX] + x :[secondPoint getY] + y]];
            } else {
                [newBasicArrayList add:secondPoint];
            }
        }
        self->pointBasicArrayList = newBasicArrayList;
}


// throws Exception
- (void) rotateToAngle:(Angle*)angle {
        [self rotate:((int32_t) [angle getValue])];
}


// throws Exception
- (void) rotate:(int32_t)angle {
        BasicArrayList* newBasicArrayList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        GPoint* secondPoint = nullptr;
        int64_t y = 0;
        int64_t secondX = 0;
        int64_t secondY = 0;
        GPoint* point = nullptr;
        PointFactory* pointFactory = [PointFactory getInstance];
        int32_t size = [self->pointBasicArrayList size];
        int64_t sin = 0;
        int64_t cos = 0;
        for (int32_t index = 0; index < size; index++) {
            secondPoint = ((GPoint*) self->pointBasicArrayList->objectArray[index]);
            if ([secondPoint getX] != 1000) {
                sin = [self->noDecimalTrigTable sin:angle];
                cos = [self->noDecimalTrigTable cos:angle];
                y = ((int64_t) [secondPoint getY]) * sin;
                secondX = (((int64_t) [secondPoint getX]) * cos) - y;
                secondY = (((int64_t) [secondPoint getX]) * sin) + (((int64_t) [secondPoint getY]) * cos);
                point = [pointFactory createXY:((int32_t) secondX) / 10000 :((int32_t) secondY) / 10000];
                [newBasicArrayList add:point];
            } else {
                [newBasicArrayList add:secondPoint];
            }
        }
        self->pointBasicArrayList = newBasicArrayList;
}


// throws Exception
- (void) mirror:(int32_t)width {
        PointFactory* pointFactory = [PointFactory getInstance];
        int32_t halfWidth = (width >> 1);
        BasicArrayList* newBasicArrayList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        GPoint* secondPoint = nullptr;
        int32_t newX = 0;
        GPoint* point = nullptr;
        int32_t size = [self->pointBasicArrayList size];
        for (int32_t index = 0; index < size; index++) {
            secondPoint = ((GPoint*) self->pointBasicArrayList->objectArray[index]);
            if ([secondPoint getX] != 1000) {
                newX = 0;
                if ([secondPoint getX] > halfWidth) {
                    newX = halfWidth - ([secondPoint getX] - halfWidth);
                } else {
                    newX = halfWidth + (halfWidth - [secondPoint getX]);
                }
                point = [pointFactory createXY:newX :[secondPoint getY]];
                [newBasicArrayList add:point];
            } else {
                [newBasicArrayList add:secondPoint];
            }
        }
        self->pointBasicArrayList = newBasicArrayList;
}


- (BasicArrayList*) getMatrix {
        return self->pointBasicArrayList;
}

@end

