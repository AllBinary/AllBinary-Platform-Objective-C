// Generated Code Do Not Modify
#include "org/allbinary/game/part/CountedLayersHudPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/part/PartInterface.h"
#include "org/allbinary/game/part/CountedLayerInterfaceFactoryPart.h"


static int32_t CountedLayersHudPaintable_XXStringWidth = 0;

void CountedLayersHudPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CountedLayersHudPaintable

- (void) initFields {
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    
    
    
    
    
    self->myFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->height = 0;
}


- (instancetype) init:(PartInterface**)partInterfaceArray :(int32_t)dropSize :(int32_t)startIndex :(int32_t)countedTotalStringColor :(int32_t)countedPartsBorder {
    self = [super init];
    [self initFields];
        self->partInterfaceArray = partInterfaceArray;
        self->startIndex = startIndex;
        self->countedTotalStringColor = countedTotalStringColor;
        self->countedPartsBorder = countedPartsBorder;
        self->dropSize = dropSize;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->height = [font getHeight];
        if (self->dropSize > [font getHeight]) {
            self->height = self->dropSize;
        }
        if (CountedLayersHudPaintable_XXStringWidth == 0) {
            const char* XXString = "XX";
            CountedLayersHudPaintable_XXStringWidth = [font stringWidth:XXString];
        }
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        int32_t lastWidth = [self->displayInfoSingleton getLastWidth];
        int32_t widthEdge = lastWidth - self->dropSize;
        int32_t size = java_array_length(self->partInterfaceArray);
        int32_t count = 0;
        int32_t y = 0;
        CountedLayerInterfaceFactoryPart* countedLayerInterfaceFactory = nullptr;
        PickedUpLayerInterfaceFactoryInterface* pickedUpLayerInterfaceFactoryInterface = nullptr;
        AllBinaryLayer* layerInterface = nullptr;
        uint16_t* charArray = nullptr;
        for (int32_t index = self->startIndex; index < size; index++) {
            countedLayerInterfaceFactory = ((CountedLayerInterfaceFactoryPart*) self->partInterfaceArray[index]);
            if ([countedLayerInterfaceFactory getTotal] > 0) {
                pickedUpLayerInterfaceFactoryInterface = [countedLayerInterfaceFactory getCountedPickedUpLayerInterfaceFactory];
                layerInterface = [pickedUpLayerInterfaceFactoryInterface getIconLayer];
                y = 40 + (count * self->height);
                [layerInterface setPosition:widthEdge :y :[layerInterface getZP]];
                [layerInterface paint:graphics];
                [graphics setColor:self->countedTotalStringColor];
                [countedLayerInterfaceFactory paint:graphics];
                charArray = [countedLayerInterfaceFactory getTotalString];
                [graphics drawChars:charArray :0 :java_array_length(charArray) :widthEdge - [countedLayerInterfaceFactory getXOffset] :y :0];
                count++;
            }
        }
        if (count > 0) {
            [graphics setColor:self->countedPartsBorder];
            [graphics drawRect:lastWidth - (CountedLayersHudPaintable_XXStringWidth + self->dropSize) :40 :CountedLayersHudPaintable_XXStringWidth + self->dropSize :(count * self->height) + 3];
        }
}


- (void) paintThreed:(Graphics*)graphics {
}

@end

