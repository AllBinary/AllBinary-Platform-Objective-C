// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButton.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationInterface.h"
#include "org/allbinary/graphics/CellPosition.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"



void TouchButton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButton

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
    
    
    
    self->rectangle = (RectangleFactory_staticInit(), RectangleFactory_SINGLETON);
    
    self->animationX = 0;
    self->animationY = 0;
}


- (instancetype) init:(TouchButtonInput*)touchButtonInput :(AnimationInterface*)animationInterface :(Rectangle*)rawRectangle :(CellPosition*)cellPosition :(int32_t)xBorder :(int32_t)yBorder {
    self = [super init];
    [self initFields];
        self->touchButtonInput = touchButtonInput;
        self->animationInterface = ((Animation*) animationInterface);
        self->rawRectangle = rawRectangle;
        self->cellPosition = cellPosition;
        self->xBorder = xBorder;
        self->yBorder = yBorder;
        [self updateRectangle];
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Created: "] append:[self toString]] toString] :self :self->commonStrings->CONSTRUCTOR];
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->animationInterface paintXY:graphics :self->animationX :self->animationY];
}


- (void) updateRectangle {
        JAVA_TRY {
            int32_t x = [self->rawRectangle getWidth] * [self->cellPosition getColumn];
            int32_t y = [self->rawRectangle getHeight] * [self->cellPosition getRow];
            PointFactory* pointFactory = [PointFactory getInstance];
            self->rectangle = [((Rectangle*) [Rectangle alloc]) init:[pointFactory createXY:x + self->xBorder :y + self->yBorder] :[self->rawRectangle getWidth] :[self->rawRectangle getHeight]];
            GPoint* point = [self->rectangle getPoint];
            self->animationX = [point getX];
            self->animationY = [point getY];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"updateRectangle" :e];
        } JAVA_END_TRY;
}


- (CellPosition*) getCellPositionP {
        return self->cellPosition;
}


- (Rectangle*) getRectangleP {
        return self->rectangle;
}


- (TouchButtonInput*) getTouchButtonInput {
        return self->touchButtonInput;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        StringUtil* stringUtil = [StringUtil getInstance];
        [stringBuffer append:"TouchButton: "];
        [stringBuffer append:[stringUtil toString:self->rectangle]];
        [stringBuffer append:" CellPosition: "];
        [stringBuffer append:[stringUtil toString:self->cellPosition]];
        [stringBuffer append:" xBorder: "];
        [stringBuffer appendint:self->xBorder];
        [stringBuffer append:" yBorder: "];
        [stringBuffer appendint:self->yBorder];
        return [stringBuffer toString];
}

@end

