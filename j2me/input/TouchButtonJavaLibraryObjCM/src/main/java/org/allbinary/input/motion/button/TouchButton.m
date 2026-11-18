// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButton.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
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
#include "org/allbinary/input/motion/button/TouchButtonResource.h"
#if __has_include("org/allbinary/input/motion/button/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/input/motion/button/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("javax/microedition/lcdui/AnimationInterfaceFactoryInterface.h")
#include "javax/microedition/lcdui/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/paint/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/paint/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/communication/log/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/string/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/string/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/string/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/string/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/string/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/string/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/input/motion/button/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/input/motion/button/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("javax/microedition/lcdui/AnimationInterfaceFactoryInterface.h")
#include "javax/microedition/lcdui/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/paint/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/paint/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/communication/log/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/string/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/string/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/string/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/string/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/string/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/string/AnimationInterfaceFactoryInterface.h"
#endif



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
    
    
    
    
    
    
    self->rectangleP = (RectangleFactory_staticInit(), RectangleFactory_SINGLETON);
    
    self->animationX = 0;
    self->animationY = 0;
    self->hintAnimationY = 0;
}


// throws Exception
+ (TouchButton*) createButton:(TouchButtonInput*)touchButtonInput :(TouchButtonResource*)touchButtonResource :(Rectangle*)rawRectangle :(CellPosition*)cellPosition :(int32_t)xBorder :(int32_t)yBorder {
        return [((TouchButton*) [TouchButton alloc]) init:touchButtonInput :[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:touchButtonResource->RESOURCE] getInstance:0] :[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:touchButtonResource->HINT] getInstance:0] :rawRectangle :cellPosition :xBorder :yBorder];
}


- (instancetype) init:(TouchButtonInput*)touchButtonInput :(Animation*)animationInterface :(Animation*)hintAnimationInterface :(Rectangle*)rawRectangle :(CellPosition*)cellPosition :(int32_t)xBorder :(int32_t)yBorder {
    self = [super init];
    [self initFields];
        self->touchButtonInput = touchButtonInput;
        self->animationInterface = animationInterface;
        self->hintAnimationInterface = hintAnimationInterface;
        self->rawRectangle = rawRectangle;
        self->cellPositionP = cellPosition;
        self->xBorder = xBorder;
        self->yBorder = yBorder;
        [self updateRectangle];
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Created: "] append:[self toString]] toString] :self :self->commonStrings->CONSTRUCTOR];
    return self;
}


- (void) paintHint:(Graphics*)graphics {
        [self->hintAnimationInterface paintXY:graphics :self->animationX :self->hintAnimationY];
}


- (void) paint:(Graphics*)graphics {
        [self->animationInterface paintXY:graphics :self->animationX :self->animationY];
}


- (void) updateRectangle {
        JAVA_TRY {
            PointFactory* pointFactory = [PointFactory getInstance];
            int32_t x = [self->rawRectangle getWidth] * [self->cellPositionP getColumn];
            int32_t y = [self->rawRectangle getHeight] * [self->cellPositionP getRow];
            self->rectangleP = [((Rectangle*) [Rectangle alloc]) init:[pointFactory createXY:x + self->xBorder :y + self->yBorder] :[self->rawRectangle getWidth] :[self->rawRectangle getHeight]];
            GPoint* point = [self->rectangleP getPoint];
            self->animationX = [point getX];
            self->animationY = [point getY];
            self->hintAnimationY = self->animationY - 32;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"updateRectangle" :e];
        } JAVA_END_TRY;
}


- (CellPosition*) getCellPosition {
        return self->cellPositionP;
}


- (Rectangle*) getRectangle {
        return self->rectangleP;
}


- (TouchButtonInput*) getTouchButtonInput {
        return self->touchButtonInput;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        StringUtil* stringUtil = [StringUtil getInstance];
        [stringBuffer append:"TouchButton: "];
        [stringBuffer append:[stringUtil toString:[self getRectangle]]];
        [stringBuffer append:" CellPosition: "];
        [stringBuffer append:[stringUtil toString:self->cellPositionP]];
        [stringBuffer append:" xBorder: "];
        [stringBuffer appendint:self->xBorder];
        [stringBuffer append:" yBorder: "];
        [stringBuffer appendint:self->yBorder];
        return [stringBuffer toString];
}

@end

