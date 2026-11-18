// Generated Code Do Not Modify
#include "org/allbinary/game/paint/GameScrollMenuPaintable.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/ColorChangeEventHandler.h"
#include "org/allbinary/graphics/form/FormPaintable.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/graphics/form/item/ABStringComponent.h"
#include "org/allbinary/graphics/form/item/ABTextItem.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/game/paint/BasicGameDemoPaintable.h"
#include "org/allbinary/game/paint/MainGameDemoStatePaintable.h"



void GameScrollMenuPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameScrollMenuPaintable


- (instancetype) init:(Paintable*)mainDemoStatePaintable :(Paintable*)ownershipPaintable :(Paintable*)helpPaintableInterface :(BasicColor*)basicColor {
        self = [super init:mainDemoStatePaintable :ownershipPaintable :helpPaintableInterface];
        [self setColor:basicColor];
        [[ColorChangeEventHandler getInstance] addListenerInterface:self];
    return self;
}


- (void) setState:(int32_t)state {
        [self setCurrentStatePaintable:[self getMainDemoStatePaintable]];
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
}


- (void) setColor:(BasicColor*)basicColor {
        MainGameDemoStatePaintable* mainGameDemoStatePaintable = ((MainGameDemoStatePaintable*) [self getMainDemoStatePaintable]);
        FormPaintable* formPaintable = ((FormPaintable*) [mainGameDemoStatePaintable getMenuPaintableInterface]);
        ScrollSelectionForm* scrollSelectionForm = ((ScrollSelectionForm*) [formPaintable getForm]);
        [[mainGameDemoStatePaintable getOwnershipPaintableInterface] setBasicColorP:basicColor];
        [scrollSelectionForm setButtonBasicColor:basicColor];
        ABTextItem* item = nullptr;
        ABStringComponent* stringComponent = nullptr;
        for (int32_t index = [scrollSelectionForm size] - 1; index >= 0; index--) {
            item = ((ABTextItem*) [scrollSelectionForm get:index]);
            stringComponent = [item getLabelStringComponent];
            if (stringComponent != nil) {
                [stringComponent setForegroundBasicColor:basicColor];
            }
        }
}

@end

