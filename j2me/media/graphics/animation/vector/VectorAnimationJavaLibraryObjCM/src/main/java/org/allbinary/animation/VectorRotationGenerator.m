// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorRotationGenerator.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/pipeline/BasicGraphicsPipeline.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListS.h"
#include "org/allbinary/vector/VectorInfo.h"
#include "org/allbinary/animation/VectorAnimationUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static VectorRotationGenerator* VectorRotationGenerator_instance;

void VectorRotationGenerator_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    VectorRotationGenerator_instance = ((VectorRotationGenerator*) [((VectorRotationGenerator*) [VectorRotationGenerator alloc]) init]);
}

@implementation VectorRotationGenerator

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->vectorAnimationUtil = [VectorAnimationUtil getInstance];
    self->angleFactory = [AngleFactory getInstance];
}


+ (VectorRotationGenerator*) getInstance {
        return (VectorRotationGenerator_staticInit(), VectorRotationGenerator_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (int32_t***) getInstance:(VectorInfo*)vectorRotationInfo {
        return [self getInstanceFrames:[vectorRotationInfo getWidth] :[vectorRotationInfo getHeight] :[vectorRotationInfo getPoints] :[vectorRotationInfo getTotalFrames]];
}


- (int32_t***) getInstanceFrames:(int32_t)width :(int32_t)height :(int32_t**)points :(int32_t)frames {
        JAVA_TRY {
            int16_t totalAngle = self->angleFactory->TOTAL_ANGLE;
            int32_t angleIncrement = ((int32_t) totalAngle) / frames;
            BasicArrayList* pointsBasicArrayList = ((BasicArrayListS*) [((BasicArrayListS*) [BasicArrayListS alloc]) init:((int32_t) totalAngle) / angleIncrement]);
            BasicArrayList* pointBasicArrayList = ((BasicArrayListS*) [((BasicArrayListS*) [BasicArrayListS alloc]) init:java_array_length(points)]);
            PointFactory* pointFactory = [PointFactory getInstance];
            int32_t size = java_array_length(points);
            for (int32_t index = 0; index < size; index++) {
                [pointBasicArrayList add:[pointFactory createXY:points[index][0] :points[index][1]]];
            }
            int32_t index = 0;
            while (index < ((int32_t) totalAngle)) {
                [pointsBasicArrayList add:[self getListAtAngle:width :height :pointBasicArrayList :[self->angleFactory getAt:index]]];
                index += angleIncrement;
            }
            int32_t*** newPoints = [self->vectorAnimationUtil toAnimationArrayFromListOfPointListWithPointsPerFrame:pointsBasicArrayList :[pointBasicArrayList size]];
            return newPoints;
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->GET_INSTANCE :e];
            return [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY_ARRAY;
        } JAVA_END_TRY;
}


// throws Exception
- (BasicArrayList*) getListAtAngle:(int32_t)width :(int32_t)height :(BasicArrayList*)pointBasicArrayList :(Angle*)angle {
        BasicGraphicsPipeline* graphicsPipe = ((BasicGraphicsPipeline*) [((BasicGraphicsPipeline*) [BasicGraphicsPipeline alloc]) init:pointBasicArrayList]);
        [graphicsPipe createMatrix];
        [graphicsPipe translate:-(width >> 1) :-(height >> 1)];
        [graphicsPipe rotateToAngle:angle];
        [graphicsPipe translate:(width >> 1) :(height >> 1)];
        return [graphicsPipe getMatrix];
}

@end

