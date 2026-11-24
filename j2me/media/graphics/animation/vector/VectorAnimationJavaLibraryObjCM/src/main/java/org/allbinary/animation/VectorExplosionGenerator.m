// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorExplosionGenerator.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/pipeline/RandomRotationFactory.h"
#include "org/allbinary/graphics/pipeline/RandomTranslation.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListS.h"
#include "org/allbinary/animation/VectorExplosionType.h"
#include "org/allbinary/animation/VectorAnimationUtil.h"


static VectorExplosionGenerator* VectorExplosionGenerator_instance;

void VectorExplosionGenerator_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    VectorExplosionGenerator_instance = ((VectorExplosionGenerator*) [((VectorExplosionGenerator*) [VectorExplosionGenerator alloc]) init]);
}

@implementation VectorExplosionGenerator

- (void) initFields {
    self->RANDOM = ((VectorExplosionType*) [((VectorExplosionType*) [VectorExplosionType alloc]) init]);
    self->ROTATION = ((VectorExplosionType*) [((VectorExplosionType*) [VectorExplosionType alloc]) init]);
    self->vectorAnimationUtil = [VectorAnimationUtil getInstance];
    self->randomRotationFactory = [RandomRotationFactory getInstance];
}


+ (VectorExplosionGenerator*) getInstance {
        return (VectorExplosionGenerator_staticInit(), VectorExplosionGenerator_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (BasicArrayList*) createList:(BasicArrayList*)list :(int32_t)howMuch :(VectorExplosionType*)type {
        GPoint* point = nullptr;
        int32_t size = [list size];
        int32_t** points = ((int32_t**) java_array_new2(sizeof(int32_t), size, 2));
        for (int32_t index = 0; index < size; index++) {
            point = ((GPoint*) list->objectArray[index]);
            points[index][0] = [point getX];
            points[index][1] = [point getY];
        }
        return [self createListFromPoints:list :points :howMuch :type];
}


// throws Exception
- (int32_t***) getInstance:(int32_t**)points :(int32_t)howMuch :(VectorExplosionType*)type {
        BasicArrayList* pointsBasicArrayList = [self getInstanceStartFrame:points :howMuch :type :true];
        BasicArrayList* tempBasicArrayList = ((BasicArrayList*) pointsBasicArrayList->objectArray[0]);
        int32_t*** newPoints = [self->vectorAnimationUtil toAnimationArrayFromListOfPointListWithPointsPerFrame:pointsBasicArrayList :[tempBasicArrayList size]];
        return newPoints;
}


// throws Exception
- (BasicArrayList*) getInstanceStartFrame:(int32_t**)points :(int32_t)howMuch :(VectorExplosionType*)type :(bool)startFrame {
        JAVA_TRY {
            BasicArrayList* pointsBasicArrayList = ((BasicArrayListS*) [((BasicArrayListS*) [BasicArrayListS alloc]) init:howMuch]);
            [pointsBasicArrayList add:[self createPointsBasicArrayList:points]];
            int32_t frameIndex = 0;
            BasicArrayList* tempBasicArrayList = nullptr;
            BasicArrayList* pointBasicArrayList = nullptr;
            while (frameIndex < howMuch) {
                tempBasicArrayList = ((BasicArrayList*) pointsBasicArrayList->objectArray[frameIndex]);
                pointBasicArrayList = [self createListFromPoints:tempBasicArrayList :points :howMuch :type];
                [pointsBasicArrayList add:pointBasicArrayList];
                frameIndex++;
            }
            if (!startFrame) {
                [pointsBasicArrayList removeAt:0];
            }
            return pointsBasicArrayList;
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_END_TRY;
}


// throws Exception
- (BasicArrayList*) createListFromPoints:(BasicArrayList*)tempBasicArrayList :(int32_t**)points :(int32_t)howMuch :(VectorExplosionType*)type {
        int32_t index = 0;
        BasicArrayList* pointBasicArrayList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        BasicArrayList* sectionBasicArrayList = nullptr;
        while (index < java_array_length(points)) {
            sectionBasicArrayList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
            while (points[index][0] != 1000) {
                [sectionBasicArrayList add:tempBasicArrayList->objectArray[index]];
                index++;
                if (index >= java_array_length(points)) {
                    break;
                }
            }
            sectionBasicArrayList = [RandomTranslation getInstance:sectionBasicArrayList :howMuch];
            if (type == self->ROTATION) {
                sectionBasicArrayList = [self->randomRotationFactory getInstanceList:sectionBasicArrayList :howMuch];
            }
            int32_t size = [sectionBasicArrayList size];
            for (int32_t index2 = 0; index2 < size; index2++) {
                [pointBasicArrayList add:sectionBasicArrayList->objectArray[index2]];
            }
            if (index >= java_array_length(points)) {
                break;
            } else if (points[index][0] == 1000) {
                [pointBasicArrayList add:tempBasicArrayList->objectArray[index]];
                index++;
            }
        }
        return pointBasicArrayList;
}


// throws Exception
- (BasicArrayList*) createPointsBasicArrayList:(int32_t**)points {
        if (java_array_length(points) == 0) {
            java_throw(java_exception_new("Exception", "Not Points Provided"));
        }
        BasicArrayList* firstPointBasicArrayList = ((BasicArrayListS*) [((BasicArrayListS*) [BasicArrayListS alloc]) init:java_array_length(points)]);
        PointFactory* pointFactory = [PointFactory getInstance];
        for (int32_t index = 0; index < java_array_length(points); index++) {
            [firstPointBasicArrayList add:[pointFactory createXY:points[index][0] :points[index][1]]];
        }
        return firstPointBasicArrayList;
}

@end

