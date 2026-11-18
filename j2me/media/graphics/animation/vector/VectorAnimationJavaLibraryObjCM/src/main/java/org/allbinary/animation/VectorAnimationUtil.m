// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorAnimationUtil.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/util/BasicArrayList.h"


static VectorAnimationUtil* VectorAnimationUtil_instance;

void VectorAnimationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    VectorAnimationUtil_instance = [((VectorAnimationUtil*) [VectorAnimationUtil alloc]) init];
}

@implementation VectorAnimationUtil


+ (VectorAnimationUtil*) getInstance {
        return (VectorAnimationUtil_staticInit(), VectorAnimationUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (int32_t***) toAnimationArrayFromListOfPointListWithPointsPerFrame:(BasicArrayList*)vector :(int32_t)pointsPerFrame {
        int32_t size = [vector size];
        int32_t*** points = ((int32_t***) java_array_new3(sizeof(int32_t), size, pointsPerFrame, 2));
        BasicArrayList* nextBasicArrayList = nullptr;
        int32_t** framePoints = nullptr;
        for (int32_t index = 0; index < size; index++) {
            nextBasicArrayList = ((BasicArrayList*) vector->objectArray[index]);
            framePoints = [self toFrameArrayFromPointBasicArrayList:nextBasicArrayList];
            for (int32_t pointIndex = 0; pointIndex < java_array_length(framePoints); pointIndex++) {
                points[index][pointIndex][0] = framePoints[pointIndex][0];
                points[index][pointIndex][1] = framePoints[pointIndex][1];
            }
        }
        return points;
}


- (int32_t***) toAnimationArrayFromListOfPointList:(BasicArrayList*)vector {
        int32_t size = [vector size];
        int32_t*** points = ((int32_t***) java_array_new3(sizeof(int32_t), size, 0, 0));
        BasicArrayList* nextBasicArrayList = nullptr;
        int32_t** framePoints = nullptr;
        for (int32_t index = 0; index < size; index++) {
            nextBasicArrayList = ((BasicArrayList*) vector->objectArray[index]);
            framePoints = [self toFrameArrayFromPointBasicArrayList:nextBasicArrayList];
            points[index] = ((int32_t**) java_array_new2(sizeof(int32_t), java_array_length(framePoints), 2));
            for (int32_t pointIndex = 0; pointIndex < java_array_length(framePoints); pointIndex++) {
                points[index][pointIndex][0] = framePoints[pointIndex][0];
                points[index][pointIndex][1] = framePoints[pointIndex][1];
            }
        }
        return points;
}


- (int32_t**) toFrameArrayFromPointBasicArrayList:(BasicArrayList*)list {
        int32_t** points = ((int32_t**) java_array_new2(sizeof(int32_t), [list size], 2));
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            GPoint* nextPoint = ((GPoint*) list->objectArray[index]);
            points[index][0] = [nextPoint getX];
            points[index][1] = [nextPoint getY];
        }
        return points;
}

@end

