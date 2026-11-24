// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorMirrorGenerator.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/pipeline/BasicGraphicsPipeline.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListS.h"
#include "org/allbinary/animation/VectorAnimationUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static VectorMirrorGenerator* VectorMirrorGenerator_instance;

void VectorMirrorGenerator_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    VectorMirrorGenerator_instance = ((VectorMirrorGenerator*) [((VectorMirrorGenerator*) [VectorMirrorGenerator alloc]) init]);
}

@implementation VectorMirrorGenerator

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->vectorAnimationUtil = [VectorAnimationUtil getInstance];
}


+ (VectorMirrorGenerator*) getInstance {
        return (VectorMirrorGenerator_staticInit(), VectorMirrorGenerator_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (int32_t***) getInstance:(int32_t***)points :(int32_t)width {
        JAVA_TRY {
            PointFactory* pointFactory = [PointFactory getInstance];
            BasicArrayList* pointBasicArrayList = nullptr;
            int32_t** nextPoints = nullptr;
            int32_t size2 = 0;
            int32_t size = java_array_length(points);
            BasicArrayList* pointsBasicArrayList = ((BasicArrayListS*) [((BasicArrayListS*) [BasicArrayListS alloc]) init:size]);
            for (int32_t frame = 0; frame < size; frame++) {
                nextPoints = points[frame];
                size2 = java_array_length(nextPoints);
                pointBasicArrayList = ((BasicArrayListS*) [((BasicArrayListS*) [BasicArrayListS alloc]) init:size2]);
                for (int32_t index = 0; index < size2; index++) {
                    [pointBasicArrayList add:[pointFactory createXY:nextPoints[index][0] :nextPoints[index][1]]];
                }
                [pointsBasicArrayList add:pointBasicArrayList];
            }
            for (int32_t index = 0; index < java_array_length(points); index++) {
                [pointsBasicArrayList add:[self getInstance:((BasicArrayList*) pointsBasicArrayList->objectArray[index]) :width]];
            }
            int32_t*** newPoints = [self->vectorAnimationUtil toAnimationArrayFromListOfPointList:pointsBasicArrayList];
            return newPoints;
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->GET_INSTANCE :e];
            return [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY_ARRAY;
        } JAVA_END_TRY;
}


// throws Exception
- (BasicArrayList*) getInstance_2:(BasicArrayList*)pointBasicArrayList :(int32_t)width {
        BasicGraphicsPipeline* graphicsPipe = ((BasicGraphicsPipeline*) [((BasicGraphicsPipeline*) [BasicGraphicsPipeline alloc]) init:pointBasicArrayList]);
        [graphicsPipe createMatrix];
        [graphicsPipe mirror:width];
        return [graphicsPipe getMatrix];
}

@end

