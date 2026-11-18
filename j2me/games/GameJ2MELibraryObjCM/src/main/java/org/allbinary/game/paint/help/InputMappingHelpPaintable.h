#ifndef ORG_ALLBINARY_GAME_PAINT_HELP_INPUTMAPPINGHELPPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_HELP_INPUTMAPPINGHELPPAINTABLE_H
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
// package org.allbinary.game.paint.help

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InputMappingHelpPaintable;
@class Font;
@class Graphics;
@class GameKey;
@class GameKeyFactory;
@class Input;
@class PlatformInputMappingFactory;
@class GameInputMapping;
@class PersistentInputMapping;
@class BasicColor;
@class BasicColorFactory;
@class BasicColorUtil;
@class NullUtil;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonLabels;
@class CommonSeps;
@class CommonStrings;
@class BasicArrayList;
@class HelpPaintable;
@class UpdateMyFontProperties;
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/GameInputMapping.h")
#include "org/allbinary/game/input/mapping/GameInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
// #include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/game/paint/help/HelpPaintable.h"
#if __has_include("org/allbinary/game/paint/help/UpdateMyFontProperties.h")
#include "org/allbinary/game/paint/help/UpdateMyFontProperties.h"
#endif

@interface InputMappingHelpPaintable : HelpPaintable {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    CommonSeps* commonSeps;
    StringUtil* stringUtil;
    BasicColorFactory* basicColorFactory;
    GameKey* NONE;
    const char* EMPTY_STRING;
    GameInputMapping** gameInputMappingArray;
    BasicArrayList** keyMappingArray;
    BasicColor** actionBasicColor;
    BasicColor*** inputBasicColorArray;
    BasicColor* selectedBasicColor;
    UpdateMyFontProperties* updateMyFontProperties;
}
- (instancetype) init:(GameInputMapping**)gameInputMappingArray :(BasicColor*)backgroundBasicColor :(BasicColor*)basicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) update:(GameKey*)selectedGameKey :(Input*)selectedInput;
- (const char*) get:(BasicArrayList*)keyList;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InputMappingHelpPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PAINT_HELP_INPUTMAPPINGHELPPAINTABLE_H
