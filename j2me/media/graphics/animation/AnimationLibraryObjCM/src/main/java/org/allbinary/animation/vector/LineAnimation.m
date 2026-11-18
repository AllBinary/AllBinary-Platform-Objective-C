// Generated Code Do Not Modify
#include "org/allbinary/animation/vector/LineAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/NullUtil.h"



void LineAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LineAnimation

- (void) initFields {
    self->newLine = ((int32_t**) java_array_new2(sizeof(int32_t), 2, 2));
    self->tempLine = [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY;
    self->line = ((int32_t**) java_array_new2(sizeof(int32_t), 2, 2));
}


- (instancetype) init:(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        [self setBasicColorP:basicColor];
    return self;
}


- (void) init_:(int32_t)x :(int32_t)y {
        self->newLine[0][0] = x;
        self->newLine[0][1] = y;
        self->newLine[1][0] = x;
        self->newLine[1][1] = y;
        self->tempLine = self->line;
        self->line = self->newLine;
        self->newLine = self->tempLine;
}


- (void) setPosition:(int32_t)x :(int32_t)y :(int32_t)z {
        self->newLine[0][0] = self->line[1][0];
        self->newLine[0][1] = self->line[1][1];
        self->newLine[1][0] = x;
        self->newLine[1][1] = y;
        self->tempLine = self->line;
        self->line = self->newLine;
        self->newLine = self->tempLine;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        int32_t** currentLine = self->line;
        [self->basicSetColorUtil setBasicColorP3:graphics :[self getBasicColorP] :[self getColor]];
        [graphics drawLine:currentLine[0][0] :currentLine[0][1] :currentLine[1][0] :currentLine[1][1]];
}


- (void) nextFrame {
}


- (BasicColor*) getBasicColorP {
        return [super getBasicColorP];
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        [super setBasicColorP:basicColor];
}

@end

