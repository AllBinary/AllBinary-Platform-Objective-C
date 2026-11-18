// Generated Code Do Not Modify
#include "org/allbinary/vector/PointsUtil.h"


static PointsUtil* PointsUtil_instance;

void PointsUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PointsUtil_instance = [((PointsUtil*) [PointsUtil alloc]) init];
}

@implementation PointsUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PointsUtil*) getInstance {
        return (PointsUtil_staticInit(), PointsUtil_instance);
}


- (int32_t***) adjustXY:(int32_t***)points :(int32_t)x :(int32_t)y {
        int32_t size = java_array_length(points);
        int32_t*** newPoints = ((int32_t***) java_array_new3(sizeof(int32_t), size, 0, 0));
        for (int32_t index = 0; index < size; index++) {
            int32_t size2 = java_array_length(points[index]);
            newPoints[index] = ((int32_t**) java_array_new2(sizeof(int32_t), size2, 2));
            for (int32_t index2 = 0; index2 < size2; index2++) {
                if (points[index][index2][0] != 1000) {
                    newPoints[index][index2][0] = points[index][index2][0] + x;
                    newPoints[index][index2][1] = points[index][index2][1] + y;
                } else {
                    newPoints[index][index2][0] = 1000;
                    newPoints[index][index2][1] = 1000;
                }
            }
        }
        return newPoints;
}


- (int32_t**) adjust:(int32_t**)points :(int32_t)both {
        return [self adjust:points :both :both];
}


- (int32_t**) adjust:(int32_t**)points :(int32_t)x :(int32_t)y {
        int32_t** newPoints = ((int32_t**) java_array_new2(sizeof(int32_t), java_array_length(points), 2));
        for (int32_t index2 = 0; index2 < java_array_length(points); index2++) {
            if (points[index2][0] != 1000) {
                newPoints[index2][0] = points[index2][0] + x;
                newPoints[index2][1] = points[index2][1] + y;
            } else {
                newPoints[index2][0] = 1000;
                newPoints[index2][1] = 1000;
            }
        }
        return newPoints;
}

@end

