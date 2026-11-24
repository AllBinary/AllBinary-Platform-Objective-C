// Generated Code Do Not Modify
#include "javax/microedition/lcdui/ChoiceGroupImageFactory.h"
#include "org/allbinary/MIDPUtil.h"
#include "javax/microedition/lcdui/Image.h"


static ChoiceGroupImageFactory* ChoiceGroupImageFactory_instance;

void ChoiceGroupImageFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ChoiceGroupImageFactory_instance = ((ChoiceGroupImageFactory*) [((ChoiceGroupImageFactory*) [ChoiceGroupImageFactory alloc]) init]);
}

@implementation ChoiceGroupImageFactory

- (void) initFields {
    self->multiOff = ((int8_t*) java_array_from(sizeof(int8_t), sizeof((int8_t[]){ ((int8_t) (-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, ((int8_t) (-12)), ((int8_t) (-117)), 0, 0, 0, 6, 80, 76, 84, 69, ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-57)), 75, ((int8_t) (-33)), ((int8_t) (-8)), 0, 0, 0, 30, 73, 68, 65, 84, 120, ((int8_t) (-38)), 99, 96, 96, 96, 96, 12, 101, ((int8_t) (-8)), ((int8_t) (-51)), ((int8_t) (-32)), ((int8_t) (-64)), 32, ((int8_t) (-64)), ((int8_t) (-60)), ((int8_t) (-64)), ((int8_t) (-64)), ((int8_t) (-128)), 11, 51, ((int8_t) (-122)), 50, ((int8_t) (-4)), 6, 0, 63, 116, 3, 1, 53, ((int8_t) (-108)), 39, ((int8_t) (-26)), 0, 0, 0, 0, 73, 69, 78, 68, ((int8_t) (-82)), 66, 96, ((int8_t) (-126)) }) / sizeof(int8_t), (int8_t[]){ ((int8_t) (-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, ((int8_t) (-12)), ((int8_t) (-117)), 0, 0, 0, 6, 80, 76, 84, 69, ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-57)), 75, ((int8_t) (-33)), ((int8_t) (-8)), 0, 0, 0, 30, 73, 68, 65, 84, 120, ((int8_t) (-38)), 99, 96, 96, 96, 96, 12, 101, ((int8_t) (-8)), ((int8_t) (-51)), ((int8_t) (-32)), ((int8_t) (-64)), 32, ((int8_t) (-64)), ((int8_t) (-60)), ((int8_t) (-64)), ((int8_t) (-64)), ((int8_t) (-128)), 11, 51, ((int8_t) (-122)), 50, ((int8_t) (-4)), 6, 0, 63, 116, 3, 1, 53, ((int8_t) (-108)), 39, ((int8_t) (-26)), 0, 0, 0, 0, 73, 69, 78, 68, ((int8_t) (-82)), 66, 96, ((int8_t) (-126)) }));
    self->multiOn = ((int8_t*) java_array_from(sizeof(int8_t), sizeof((int8_t[]){ ((int8_t) (-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, ((int8_t) (-12)), ((int8_t) (-117)), 0, 0, 0, 12, 80, 76, 84, 69, ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-69)), 106, 106, 106, 2, 2, 2, 106, ((int8_t) (-103)), 14, ((int8_t) (-47)), 0, 0, 0, 53, 73, 68, 65, 84, 120, ((int8_t) (-38)), 99, 96, 96, 124, ((int8_t) (-64)), ((int8_t) (-16)), ((int8_t) (-1)), ((int8_t) (-77)), 3, ((int8_t) (-45)), 65, ((int8_t) (-111)), 15, 76, 12, 108, 12, 76, 12, ((int8_t) (-4)), 12, 76, 12, 18, 12, 76, ((int8_t) (-68)), 127, 24, ((int8_t) (-104)), 126, 45, 96, 96, ((int8_t) (-7)), ((int8_t) (-11)), ((int8_t) (-109)), ((int8_t) (-127)), ((int8_t) (-23)), ((int8_t) (-65)), 3, 3, ((int8_t) (-29)), 127, ((int8_t) (-122)), ((int8_t) (-113)), 0, 5, 37, 12, ((int8_t) (-34)), 1, ((int8_t) (-99)), ((int8_t) (-83)), 100, 0, 0, 0, 0, 73, 69, 78, 68, ((int8_t) (-82)), 66, 96, ((int8_t) (-126)) }) / sizeof(int8_t), (int8_t[]){ ((int8_t) (-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, ((int8_t) (-12)), ((int8_t) (-117)), 0, 0, 0, 12, 80, 76, 84, 69, ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-69)), 106, 106, 106, 2, 2, 2, 106, ((int8_t) (-103)), 14, ((int8_t) (-47)), 0, 0, 0, 53, 73, 68, 65, 84, 120, ((int8_t) (-38)), 99, 96, 96, 124, ((int8_t) (-64)), ((int8_t) (-16)), ((int8_t) (-1)), ((int8_t) (-77)), 3, ((int8_t) (-45)), 65, ((int8_t) (-111)), 15, 76, 12, 108, 12, 76, 12, ((int8_t) (-4)), 12, 76, 12, 18, 12, 76, ((int8_t) (-68)), 127, 24, ((int8_t) (-104)), 126, 45, 96, 96, ((int8_t) (-7)), ((int8_t) (-11)), ((int8_t) (-109)), ((int8_t) (-127)), ((int8_t) (-23)), ((int8_t) (-65)), 3, 3, ((int8_t) (-29)), 127, ((int8_t) (-122)), ((int8_t) (-113)), 0, 5, 37, 12, ((int8_t) (-34)), 1, ((int8_t) (-99)), ((int8_t) (-83)), 100, 0, 0, 0, 0, 73, 69, 78, 68, ((int8_t) (-82)), 66, 96, ((int8_t) (-126)) }));
    self->radioOff = ((int8_t*) java_array_from(sizeof(int8_t), sizeof((int8_t[]){ ((int8_t) (-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, ((int8_t) (-44)), ((int8_t) (-62)), ((int8_t) (-97)), ((int8_t) (-75)), 0, 0, 0, 9, 80, 76, 84, 69, ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-69)), 106, 106, 106, ((int8_t) (-44)), 13, ((int8_t) (-1)), ((int8_t) (-24)), 0, 0, 0, 42, 73, 68, 65, 84, 120, ((int8_t) (-38)), 99, 96, 90, ((int8_t) (-59)), ((int8_t) (-64)), 32, ((int8_t) (-63)), 48, ((int8_t) (-127)), 65, ((int8_t) (-127)), 65, ((int8_t) (-127)), 41, ((int8_t) (-127)), ((int8_t) (-31)), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, ((int8_t) (-6)), ((int8_t) (-63)), 80, ((int8_t) (-64)), ((int8_t) (-64)), ((int8_t) (-76)), ((int8_t) (-118)), 1, 0, 113, 24, 5, 61, 73, ((int8_t) (-68)), ((int8_t) (-100)), 98, 0, 0, 0, 0, 73, 69, 78, 68, ((int8_t) (-82)), 66, 96, ((int8_t) (-126)) }) / sizeof(int8_t), (int8_t[]){ ((int8_t) (-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, ((int8_t) (-44)), ((int8_t) (-62)), ((int8_t) (-97)), ((int8_t) (-75)), 0, 0, 0, 9, 80, 76, 84, 69, ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-69)), 106, 106, 106, ((int8_t) (-44)), 13, ((int8_t) (-1)), ((int8_t) (-24)), 0, 0, 0, 42, 73, 68, 65, 84, 120, ((int8_t) (-38)), 99, 96, 90, ((int8_t) (-59)), ((int8_t) (-64)), 32, ((int8_t) (-63)), 48, ((int8_t) (-127)), 65, ((int8_t) (-127)), 65, ((int8_t) (-127)), 41, ((int8_t) (-127)), ((int8_t) (-31)), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, ((int8_t) (-6)), ((int8_t) (-63)), 80, ((int8_t) (-64)), ((int8_t) (-64)), ((int8_t) (-76)), ((int8_t) (-118)), 1, 0, 113, 24, 5, 61, 73, ((int8_t) (-68)), ((int8_t) (-100)), 98, 0, 0, 0, 0, 73, 69, 78, 68, ((int8_t) (-82)), 66, 96, ((int8_t) (-126)) }));
    self->radioOn = ((int8_t*) java_array_from(sizeof(int8_t), sizeof((int8_t[]){ ((int8_t) (-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, ((int8_t) (-44)), ((int8_t) (-62)), ((int8_t) (-97)), ((int8_t) (-75)), 0, 0, 0, 12, 80, 76, 84, 69, ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-69)), 106, 106, 106, 2, 2, 2, 106, ((int8_t) (-103)), 14, ((int8_t) (-47)), 0, 0, 0, 50, 73, 68, 65, 84, 120, ((int8_t) (-38)), 5, ((int8_t) (-63)), 65, 13, 0, 32, 12, 4, ((int8_t) (-63)), ((int8_t) (-19)), ((int8_t) (-11)), ((int8_t) (-117)), 1, 18, 68, ((int8_t) (-100)), 10, 52, 19, 94, 72, 64, 17, 101, ((int8_t) (-122)), 44, ((int8_t) (-44)), ((int8_t) (-29)), 98, ((int8_t) (-52)), 89, 77, ((int8_t) (-102)), 40, 2, 85, ((int8_t) (-95)), ((int8_t) (-73)), ((int8_t) (-63)), ((int8_t) (-104)), ((int8_t) (-63)), 37, ((int8_t) (-117)), 15, ((int8_t) (-40)), 119, 10, 41, 78, 26, ((int8_t) (-79)), 59, 0, 0, 0, 0, 73, 69, 78, 68, ((int8_t) (-82)), 66, 96, ((int8_t) (-126)) }) / sizeof(int8_t), (int8_t[]){ ((int8_t) (-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, ((int8_t) (-44)), ((int8_t) (-62)), ((int8_t) (-97)), ((int8_t) (-75)), 0, 0, 0, 12, 80, 76, 84, 69, ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-1)), ((int8_t) (-69)), ((int8_t) (-69)), ((int8_t) (-69)), 106, 106, 106, 2, 2, 2, 106, ((int8_t) (-103)), 14, ((int8_t) (-47)), 0, 0, 0, 50, 73, 68, 65, 84, 120, ((int8_t) (-38)), 5, ((int8_t) (-63)), 65, 13, 0, 32, 12, 4, ((int8_t) (-63)), ((int8_t) (-19)), ((int8_t) (-11)), ((int8_t) (-117)), 1, 18, 68, ((int8_t) (-100)), 10, 52, 19, 94, 72, 64, 17, 101, ((int8_t) (-122)), 44, ((int8_t) (-44)), ((int8_t) (-29)), 98, ((int8_t) (-52)), 89, 77, ((int8_t) (-102)), 40, 2, 85, ((int8_t) (-95)), ((int8_t) (-73)), ((int8_t) (-63)), ((int8_t) (-104)), ((int8_t) (-63)), 37, ((int8_t) (-117)), 15, ((int8_t) (-40)), 119, 10, 41, 78, 26, ((int8_t) (-79)), 59, 0, 0, 0, 0, 73, 69, 78, 68, ((int8_t) (-82)), 66, 96, ((int8_t) (-126)) }));
    self->midpUtil = [MIDPUtil getInstance];
    self->imgMultiOffO = [self->midpUtil createImageFromByteArray:self->multiOff :0 :java_array_length(self->multiOff)];
    self->imgMultiOnO = [self->midpUtil createImageFromByteArray:self->multiOn :0 :java_array_length(self->multiOn)];
    self->imgRadioOffO = [self->midpUtil createImageFromByteArray:self->radioOff :0 :java_array_length(self->radioOff)];
    self->imgRadioOnO = [self->midpUtil createImageFromByteArray:self->radioOn :0 :java_array_length(self->radioOn)];
    self->imgMultiOff = self->imgMultiOffO;
    self->imgMultiOn = self->imgMultiOnO;
    self->imgRadioOff = self->imgRadioOffO;
    self->imgRadioOn = self->imgRadioOnO;
    self->imageArray = ((Image**) java_array_from(sizeof(Image*), sizeof((Image*[]){ self->imgMultiOff, self->imgMultiOn, self->imgRadioOff, self->imgRadioOn }) / sizeof(Image*), (Image*[]){ self->imgMultiOff, self->imgMultiOn, self->imgRadioOff, self->imgRadioOn }));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ChoiceGroupImageFactory*) getInstance {
        return (ChoiceGroupImageFactory_staticInit(), ChoiceGroupImageFactory_instance);
}


- (Image**) getImageArray {
        return self->imageArray;
}


- (void) initMethod:(Image**)imageArray {
        self->imgMultiOff = imageArray[0];
        self->imageArray[0] = self->imgMultiOff;
        self->imgMultiOn = imageArray[1];
        self->imageArray[1] = self->imgMultiOn;
        self->imgRadioOff = imageArray[2];
        self->imageArray[2] = self->imgRadioOff;
        self->imgRadioOn = imageArray[3];
        self->imageArray[3] = self->imgRadioOn;
}

@end

