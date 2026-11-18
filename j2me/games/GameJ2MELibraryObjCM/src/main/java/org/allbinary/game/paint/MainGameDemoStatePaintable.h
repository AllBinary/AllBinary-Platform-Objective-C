#ifndef ORG_ALLBINARY_GAME_PAINT_MAINGAMEDEMOSTATEPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_MAINGAMEDEMOSTATEPAINTABLE_H
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
// package org.allbinary.game.paint

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MainGameDemoStatePaintable;
@class Graphics;
@class Paintable;
#include "org/allbinary/graphics/paint/Paintable.h"

@interface MainGameDemoStatePaintable : Paintable {
@public
    Paintable* ownershipPaintableInterface;
    Paintable* menuPaintableInterface;
}
- (instancetype) init:(Paintable*)ownershipPaintableInterface :(Paintable*)menuPaintableInterface;
- (void) initFields;
- (void) paint:(Graphics*)graphics;
- (Paintable*) getOwnershipPaintableInterface;
- (Paintable*) getMenuPaintableInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MainGameDemoStatePaintable_staticInit(void);

#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif

#endif // ORG_ALLBINARY_GAME_PAINT_MAINGAMEDEMOSTATEPAINTABLE_H
