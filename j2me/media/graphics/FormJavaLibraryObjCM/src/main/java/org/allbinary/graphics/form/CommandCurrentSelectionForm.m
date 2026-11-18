// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/CommandCurrentSelectionForm.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/animation/vector/RectangleAdjustedAnimation.h"
#include "org/allbinary/animation/vector/RectangleFilledAdjustedAnimation.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/form/item/CommandTextItem.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"
#include "org/allbinary/graphics/form/ItemPaintableFactory.h"



void CommandCurrentSelectionForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CommandCurrentSelectionForm

- (void) initFields {
    self->selectedAnimationArray = ((Animation**) java_array_new(sizeof(Animation*), 16));
    self->unSelectedAnimationArray = ((Animation**) java_array_new(sizeof(Animation*), 16));
}


- (instancetype) init:(const char*)title :(ABCustomItem**)items :(int32_t)border :(bool)moveForSmallScreen :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:title :items :[ItemPaintableFactory getInstance] :border :-3 :moveForSmallScreen :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
        [self initAnimations];
        [self addAll:items];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        [self updateAll:graphics :[self getAllitems]];
        [super updateMeasurement:graphics];
}


- (void) initAnimations {
        Animation* nullAnimation = [[NullAnimationFactory getFactoryInstance] getInstance:0];
        for (int32_t index = java_array_length(self->selectedAnimationArray); --index >= 0; ) {
            self->selectedAnimationArray[index] = nullAnimation;
        }
        for (int32_t index = java_array_length(self->unSelectedAnimationArray); --index >= 0; ) {
            self->unSelectedAnimationArray[index] = nullAnimation;
        }
}


- (void) addAll:(ABCustomItem**)items {
        for (int32_t index = java_array_length(items); --index >= 0; ) {
            [self addAt:index :items[index]];
        }
}


- (void) addAt:(int32_t)index :(ABCustomItem*)item {
        BasicColorFactory* basicColorFactory = [BasicColorFactory getInstance];
        BasicColor* buttonColor = basicColorFactory->TRANSPARENT_GREY;
        BasicColor* selectedButtonColor = basicColorFactory->TRANSPARENT_RED;
        int32_t width = [item getMinimumWidth];
        int32_t height = [item getMinimumHeight];
        int32_t adjustedBorder = 3;
        int32_t offset = -(self->halfBorder + adjustedBorder);
        int32_t rectWidth = width + self->border - adjustedBorder;
        int32_t rectHeight = height + self->border - adjustedBorder;
        if ([J2MEUtil isJ2ME] || [J2MEUtil isHTML]) {
            self->selectedAnimationArray[index] = [((RectangleAdjustedAnimation*) [RectangleAdjustedAnimation alloc]) init:rectWidth :rectHeight :offset :offset :selectedButtonColor];
        } else {
            self->selectedAnimationArray[index] = [((RectangleFilledAdjustedAnimation*) [RectangleFilledAdjustedAnimation alloc]) init:rectWidth :rectHeight :offset :offset :selectedButtonColor];
        }
        adjustedBorder = 4;
        if ([J2MEUtil isJ2ME] || [J2MEUtil isHTML]) {
            self->unSelectedAnimationArray[index] = [((RectangleAdjustedAnimation*) [RectangleAdjustedAnimation alloc]) init:rectWidth :rectHeight :offset :offset :buttonColor];
        } else {
            self->unSelectedAnimationArray[index] = [((RectangleFilledAdjustedAnimation*) [RectangleFilledAdjustedAnimation alloc]) init:rectWidth :rectHeight :offset :offset :buttonColor];
        }
}


- (void) updateAll:(Graphics*)graphics :(ABCustomItem**)items {
        for (int32_t index = java_array_length(items); --index >= 0; ) {
            [items[index] preMeasurement:graphics];
            [self updateAt:index :items[index]];
        }
}


- (void) updateAt:(int32_t)index :(ABCustomItem*)item {
        BasicColorFactory* basicColorFactory = [BasicColorFactory getInstance];
        BasicColor* buttonColor = basicColorFactory->TRANSPARENT_GREY;
        BasicColor* selectedButtonColor = basicColorFactory->TRANSPARENT_RED;
        int32_t width = [item getMinimumWidth];
        int32_t height = [item getMinimumHeight];
        int32_t adjustedBorder = 3;
        int32_t offset = -(self->halfBorder + adjustedBorder);
        int32_t rectWidth = width + self->border - adjustedBorder;
        int32_t rectHeight = height + self->border - adjustedBorder;
        if ([J2MEUtil isJ2ME] || [J2MEUtil isHTML]) {
            RectangleAdjustedAnimation* rectangleAdjustedAnimation = ((RectangleAdjustedAnimation*) self->selectedAnimationArray[index]);
            [rectangleAdjustedAnimation setWidth:rectWidth];
            [rectangleAdjustedAnimation setHeight:rectHeight];
            [rectangleAdjustedAnimation setOffsetX:offset];
            [rectangleAdjustedAnimation setOffsetY:offset];
            [rectangleAdjustedAnimation setBasicColorP:selectedButtonColor];
        } else {
            RectangleFilledAdjustedAnimation* rectangleAdjustedAnimation = ((RectangleFilledAdjustedAnimation*) self->selectedAnimationArray[index]);
            [rectangleAdjustedAnimation setWidth:rectWidth];
            [rectangleAdjustedAnimation setHeight:rectHeight];
            [rectangleAdjustedAnimation setOffsetX:offset];
            [rectangleAdjustedAnimation setOffsetY:offset];
            [rectangleAdjustedAnimation setBasicColorP:selectedButtonColor];
        }
        adjustedBorder = 4;
        if ([J2MEUtil isJ2ME] || [J2MEUtil isHTML]) {
            RectangleAdjustedAnimation* rectangleAdjustedAnimation = ((RectangleAdjustedAnimation*) self->unSelectedAnimationArray[index]);
            [rectangleAdjustedAnimation setWidth:rectWidth];
            [rectangleAdjustedAnimation setHeight:rectHeight];
            [rectangleAdjustedAnimation setOffsetX:offset];
            [rectangleAdjustedAnimation setOffsetY:offset];
            [rectangleAdjustedAnimation setBasicColorP:buttonColor];
        } else {
            RectangleFilledAdjustedAnimation* rectangleAdjustedAnimation = ((RectangleFilledAdjustedAnimation*) self->unSelectedAnimationArray[index]);
            [rectangleAdjustedAnimation setWidth:rectWidth];
            [rectangleAdjustedAnimation setHeight:rectHeight];
            [rectangleAdjustedAnimation setOffsetX:offset];
            [rectangleAdjustedAnimation setOffsetY:offset];
            [rectangleAdjustedAnimation setBasicColorP:buttonColor];
        }
}


- (Command*) getSelectedCommand {
        int32_t index = [super getSelectedIndex];
        CommandTextItem* commandTextItem = ((CommandTextItem*) [self get:index]);
        return [commandTextItem getCommand];
}


- (int32_t) append:(ABCustomItem*)item {
        int32_t result = [super append:item];
        [self addAt:result :item];
        return result;
}


- (void) delete:(int32_t)itemNum {
        [super delete:itemNum];
}


- (void) deleteAll {
        [self initAnimations];
        [super deleteAll];
}


- (void) insert:(int32_t)itemNum :(ABCustomItem*)item {
        [super insert:itemNum :item];
}


- (void) set:(int32_t)itemNum :(ABCustomItem*)item {
        [super set:itemNum :item];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        [super paint:graphics];
}


// throws Exception
- (int32_t) paintItem:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y {
        [self->selectedAnimationArray[index] paintXY:graphics :x :y];
        return [super paintItem:graphics :index :item :x :y];
}


// throws Exception
- (int32_t) paintUnselectedItem:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y {
        [self->unSelectedAnimationArray[index] paintXY:graphics :x :y];
        return [super paintUnselectedItem:graphics :index :item :x :y];
}

@end

