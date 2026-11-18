#ifndef ORG_ALLBINARY_GAME_LAYER_PAINTABLELAYERCOMPOSITE_H
#define ORG_ALLBINARY_GAME_LAYER_PAINTABLELAYERCOMPOSITE_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PaintableLayerComposite;
@class Graphics;
@class Paintable;
@class PaintableInterface;
@class Layer;
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/layer/Layer.h")
#include "org/allbinary/layer/Layer.h"
#endif

@interface PaintableLayerComposite : Paintable {
@public
    Layer** paintableArray;
}
- (instancetype) init:(Layer**)paintableArray;
- (void) initFields;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PaintableLayerComposite_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_PAINTABLELAYERCOMPOSITE_H
