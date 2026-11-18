// Generated Code Do Not Modify
#include "org/allbinary/game/combat/damage/PtsDamageFloaters.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorArrayIndexer.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/java/character/CharArrayFactory.h"
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/combat/damage/DamageFloaters.h"


static BasicColorArrayIndexer* PtsDamageFloaters_basicColorArrayIndexer;

void PtsDamageFloaters_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PtsDamageFloaters_basicColorArrayIndexer = [((BasicColorArrayIndexer*) [BasicColorArrayIndexer alloc]) init:((BasicColor**) java_array_from(sizeof(BasicColor*), sizeof((BasicColor*[]){ [BasicColorFactory getInstance]->WHITE, [BasicColorFactory getInstance]->RED, [BasicColorFactory getInstance]->YELLOW, [BasicColorFactory getInstance]->BLUE }) / sizeof(BasicColor*), (BasicColor*[]){ [BasicColorFactory getInstance]->WHITE, [BasicColorFactory getInstance]->RED, [BasicColorFactory getInstance]->YELLOW, [BasicColorFactory getInstance]->BLUE }))];
}

@implementation PtsDamageFloaters

- (void) initFields {
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    
    self->lastDamage = ((int32_t*) java_array_new(sizeof(int32_t), 5));
    self->lastDamageString = ((uint16_t**) java_array_new2(sizeof(uint16_t), 5, 0));
    self->lastDamageStringSizeArray = ((int32_t*) java_array_new(sizeof(int32_t), 5));
    self->circularIndexUtil = [CircularIndexUtil createInstance:5];
    
    self->myRandomFactory = [MyRandomFactory getInstance];
}


- (instancetype) init:(AllBinaryLayer*)layerInterface {
    self = [super init];
    [self initFields];
        self->primitiveLongUtil = [PrimitiveLongUtil createPowerOfTen:100000];
        self->layerInterface = layerInterface;
        uint16_t* CHAR_ARRAY = [[CharArrayFactory getInstance] getZeroCharArray];
        for (int32_t index = java_array_length(self->lastDamageString) - 1; index >= 0; index--) {
            self->lastDamageString[index] = CHAR_ARRAY;
        }
    return self;
}


- (void) add:(int32_t)damage {
        int32_t index = [self->circularIndexUtil getIndex];
        self->lastDamage[index] = damage;
        self->lastDamageString[index] = [self->primitiveLongUtil getCharArray:self->lastDamage[index]];
        self->lastDamageStringSizeArray[index] = [self->primitiveLongUtil getCurrentTotalDigits];
        [self->circularIndexUtil next];
}


- (void) paint:(Graphics*)graphics {
        ViewPositionBase* viewPosition = [self->layerInterface getViewPosition];
        int32_t x = [viewPosition getX];
        int32_t y = [viewPosition getY];
        for (int32_t index = java_array_length(self->lastDamage) - 1; index >= 0; index--) {
            if (self->lastDamage[index] != 0) {
                int32_t delta = 10 * (index + 2);
                [self->basicSetColorUtil setBasicColorP:graphics :[(PtsDamageFloaters_staticInit(), PtsDamageFloaters_basicColorArrayIndexer) get]];
                [graphics drawChars:self->lastDamageString[index] :0 :self->lastDamageStringSizeArray[index] :x - [self->myRandomFactory getNextInt:delta] :y - delta :0];
                [(PtsDamageFloaters_staticInit(), PtsDamageFloaters_basicColorArrayIndexer) next];
            }
            self->lastDamage[index] = 0;
        }
}

@end

