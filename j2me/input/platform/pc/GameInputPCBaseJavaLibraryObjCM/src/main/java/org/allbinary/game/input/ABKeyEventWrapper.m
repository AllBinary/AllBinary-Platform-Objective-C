// Generated Code Do Not Modify
#include "org/allbinary/game/input/ABKeyEventWrapper.h"


static ABKeyEventWrapper* ABKeyEventWrapper_instance;

void ABKeyEventWrapper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ABKeyEventWrapper_instance = [((ABKeyEventWrapper*) [ABKeyEventWrapper alloc]) init];
}

@implementation ABKeyEventWrapper

- (void) initFields {
    self->VK_ENTER = (KeyEvent_staticInit(), KeyEvent_VK_ENTER);
    self->VK_BACK_SPACE = (KeyEvent_staticInit(), KeyEvent_VK_BACK_SPACE);
    self->VK_TAB = (KeyEvent_staticInit(), KeyEvent_VK_TAB);
    self->VK_CANCEL = (KeyEvent_staticInit(), KeyEvent_VK_CANCEL);
    self->VK_CLEAR = (KeyEvent_staticInit(), KeyEvent_VK_CLEAR);
    self->VK_SHIFT = (KeyEvent_staticInit(), KeyEvent_VK_SHIFT);
    self->VK_CONTROL = (KeyEvent_staticInit(), KeyEvent_VK_CONTROL);
    self->VK_ALT = (KeyEvent_staticInit(), KeyEvent_VK_ALT);
    self->VK_PAUSE = (KeyEvent_staticInit(), KeyEvent_VK_PAUSE);
    self->VK_CAPS_LOCK = (KeyEvent_staticInit(), KeyEvent_VK_CAPS_LOCK);
    self->VK_ESCAPE = (KeyEvent_staticInit(), KeyEvent_VK_ESCAPE);
    self->VK_SPACE = (KeyEvent_staticInit(), KeyEvent_VK_SPACE);
    self->VK_PAGE_UP = (KeyEvent_staticInit(), KeyEvent_VK_PAGE_UP);
    self->VK_PAGE_DOWN = (KeyEvent_staticInit(), KeyEvent_VK_PAGE_DOWN);
    self->VK_END = (KeyEvent_staticInit(), KeyEvent_VK_END);
    self->VK_HOME = (KeyEvent_staticInit(), KeyEvent_VK_HOME);
    self->VK_LEFT = (KeyEvent_staticInit(), KeyEvent_VK_LEFT);
    self->VK_UP = (KeyEvent_staticInit(), KeyEvent_VK_UP);
    self->VK_RIGHT = (KeyEvent_staticInit(), KeyEvent_VK_RIGHT);
    self->VK_DOWN = (KeyEvent_staticInit(), KeyEvent_VK_DOWN);
    self->VK_COMMA = (KeyEvent_staticInit(), KeyEvent_VK_COMMA);
    self->VK_MINUS = (KeyEvent_staticInit(), KeyEvent_VK_MINUS);
    self->VK_PERIOD = (KeyEvent_staticInit(), KeyEvent_VK_PERIOD);
    self->VK_SLASH = (KeyEvent_staticInit(), KeyEvent_VK_SLASH);
    self->VK_0 = (KeyEvent_staticInit(), KeyEvent_VK_0);
    self->VK_1 = (KeyEvent_staticInit(), KeyEvent_VK_1);
    self->VK_2 = (KeyEvent_staticInit(), KeyEvent_VK_2);
    self->VK_3 = (KeyEvent_staticInit(), KeyEvent_VK_3);
    self->VK_4 = (KeyEvent_staticInit(), KeyEvent_VK_4);
    self->VK_5 = (KeyEvent_staticInit(), KeyEvent_VK_5);
    self->VK_6 = (KeyEvent_staticInit(), KeyEvent_VK_6);
    self->VK_7 = (KeyEvent_staticInit(), KeyEvent_VK_7);
    self->VK_8 = (KeyEvent_staticInit(), KeyEvent_VK_8);
    self->VK_9 = (KeyEvent_staticInit(), KeyEvent_VK_9);
    self->VK_SEMICOLON = (KeyEvent_staticInit(), KeyEvent_VK_SEMICOLON);
    self->VK_EQUALS = (KeyEvent_staticInit(), KeyEvent_VK_EQUALS);
    self->VK_A = (KeyEvent_staticInit(), KeyEvent_VK_A);
    self->VK_B = (KeyEvent_staticInit(), KeyEvent_VK_B);
    self->VK_C = (KeyEvent_staticInit(), KeyEvent_VK_C);
    self->VK_D = (KeyEvent_staticInit(), KeyEvent_VK_D);
    self->VK_E = (KeyEvent_staticInit(), KeyEvent_VK_E);
    self->VK_F = (KeyEvent_staticInit(), KeyEvent_VK_F);
    self->VK_G = (KeyEvent_staticInit(), KeyEvent_VK_G);
    self->VK_H = (KeyEvent_staticInit(), KeyEvent_VK_H);
    self->VK_I = (KeyEvent_staticInit(), KeyEvent_VK_I);
    self->VK_J = (KeyEvent_staticInit(), KeyEvent_VK_J);
    self->VK_K = (KeyEvent_staticInit(), KeyEvent_VK_K);
    self->VK_L = (KeyEvent_staticInit(), KeyEvent_VK_L);
    self->VK_M = (KeyEvent_staticInit(), KeyEvent_VK_M);
    self->VK_N = (KeyEvent_staticInit(), KeyEvent_VK_N);
    self->VK_O = (KeyEvent_staticInit(), KeyEvent_VK_O);
    self->VK_P = (KeyEvent_staticInit(), KeyEvent_VK_P);
    self->VK_Q = (KeyEvent_staticInit(), KeyEvent_VK_Q);
    self->VK_R = (KeyEvent_staticInit(), KeyEvent_VK_R);
    self->VK_S = (KeyEvent_staticInit(), KeyEvent_VK_S);
    self->VK_T = (KeyEvent_staticInit(), KeyEvent_VK_T);
    self->VK_U = (KeyEvent_staticInit(), KeyEvent_VK_U);
    self->VK_V = (KeyEvent_staticInit(), KeyEvent_VK_V);
    self->VK_W = (KeyEvent_staticInit(), KeyEvent_VK_W);
    self->VK_X = (KeyEvent_staticInit(), KeyEvent_VK_X);
    self->VK_Y = (KeyEvent_staticInit(), KeyEvent_VK_Y);
    self->VK_Z = (KeyEvent_staticInit(), KeyEvent_VK_Z);
    self->VK_OPEN_BRACKET = (KeyEvent_staticInit(), KeyEvent_VK_OPEN_BRACKET);
    self->VK_BACK_SLASH = (KeyEvent_staticInit(), KeyEvent_VK_BACK_SLASH);
    self->VK_CLOSE_BRACKET = (KeyEvent_staticInit(), KeyEvent_VK_CLOSE_BRACKET);
    self->VK_NUMPAD0 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD0);
    self->VK_NUMPAD1 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD1);
    self->VK_NUMPAD2 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD2);
    self->VK_NUMPAD3 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD3);
    self->VK_NUMPAD4 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD4);
    self->VK_NUMPAD5 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD5);
    self->VK_NUMPAD6 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD6);
    self->VK_NUMPAD7 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD7);
    self->VK_NUMPAD8 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD8);
    self->VK_NUMPAD9 = (KeyEvent_staticInit(), KeyEvent_VK_NUMPAD9);
    self->VK_MULTIPLY = (KeyEvent_staticInit(), KeyEvent_VK_MULTIPLY);
    self->VK_ADD = (KeyEvent_staticInit(), KeyEvent_VK_ADD);
    self->VK_SEPARATER = (KeyEvent_staticInit(), KeyEvent_VK_SEPARATER);
    self->VK_SEPARATOR = (KeyEvent_staticInit(), KeyEvent_VK_SEPARATOR);
    self->VK_SUBTRACT = (KeyEvent_staticInit(), KeyEvent_VK_SUBTRACT);
    self->VK_DECIMAL = (KeyEvent_staticInit(), KeyEvent_VK_DECIMAL);
    self->VK_DIVIDE = (KeyEvent_staticInit(), KeyEvent_VK_DIVIDE);
    self->VK_DELETE = (KeyEvent_staticInit(), KeyEvent_VK_DELETE);
    self->VK_NUM_LOCK = (KeyEvent_staticInit(), KeyEvent_VK_NUM_LOCK);
    self->VK_SCROLL_LOCK = (KeyEvent_staticInit(), KeyEvent_VK_SCROLL_LOCK);
    self->VK_F1 = (KeyEvent_staticInit(), KeyEvent_VK_F1);
    self->VK_F2 = (KeyEvent_staticInit(), KeyEvent_VK_F2);
    self->VK_F3 = (KeyEvent_staticInit(), KeyEvent_VK_F3);
    self->VK_F4 = (KeyEvent_staticInit(), KeyEvent_VK_F4);
    self->VK_F5 = (KeyEvent_staticInit(), KeyEvent_VK_F5);
    self->VK_F6 = (KeyEvent_staticInit(), KeyEvent_VK_F6);
    self->VK_F7 = (KeyEvent_staticInit(), KeyEvent_VK_F7);
    self->VK_F8 = (KeyEvent_staticInit(), KeyEvent_VK_F8);
    self->VK_F9 = (KeyEvent_staticInit(), KeyEvent_VK_F9);
    self->VK_F10 = (KeyEvent_staticInit(), KeyEvent_VK_F10);
    self->VK_F11 = (KeyEvent_staticInit(), KeyEvent_VK_F11);
    self->VK_F12 = (KeyEvent_staticInit(), KeyEvent_VK_F12);
    self->VK_F13 = (KeyEvent_staticInit(), KeyEvent_VK_F13);
    self->VK_F14 = (KeyEvent_staticInit(), KeyEvent_VK_F14);
    self->VK_F15 = (KeyEvent_staticInit(), KeyEvent_VK_F15);
    self->VK_F16 = (KeyEvent_staticInit(), KeyEvent_VK_F16);
    self->VK_F17 = (KeyEvent_staticInit(), KeyEvent_VK_F17);
    self->VK_F18 = (KeyEvent_staticInit(), KeyEvent_VK_F18);
    self->VK_F19 = (KeyEvent_staticInit(), KeyEvent_VK_F19);
    self->VK_F20 = (KeyEvent_staticInit(), KeyEvent_VK_F20);
    self->VK_F21 = (KeyEvent_staticInit(), KeyEvent_VK_F21);
    self->VK_F22 = (KeyEvent_staticInit(), KeyEvent_VK_F22);
    self->VK_F23 = (KeyEvent_staticInit(), KeyEvent_VK_F23);
    self->VK_F24 = (KeyEvent_staticInit(), KeyEvent_VK_F24);
    self->VK_PRINTSCREEN = (KeyEvent_staticInit(), KeyEvent_VK_PRINTSCREEN);
    self->VK_INSERT = (KeyEvent_staticInit(), KeyEvent_VK_INSERT);
    self->VK_HELP = (KeyEvent_staticInit(), KeyEvent_VK_HELP);
    self->VK_META = (KeyEvent_staticInit(), KeyEvent_VK_META);
    self->VK_BACK_QUOTE = (KeyEvent_staticInit(), KeyEvent_VK_BACK_QUOTE);
    self->VK_QUOTE = (KeyEvent_staticInit(), KeyEvent_VK_QUOTE);
    self->VK_KP_UP = (KeyEvent_staticInit(), KeyEvent_VK_KP_UP);
    self->VK_KP_DOWN = (KeyEvent_staticInit(), KeyEvent_VK_KP_DOWN);
    self->VK_KP_LEFT = (KeyEvent_staticInit(), KeyEvent_VK_KP_LEFT);
    self->VK_KP_RIGHT = (KeyEvent_staticInit(), KeyEvent_VK_KP_RIGHT);
    self->VK_DEAD_GRAVE = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_GRAVE);
    self->VK_DEAD_ACUTE = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_ACUTE);
    self->VK_DEAD_CIRCUMFLEX = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_CIRCUMFLEX);
    self->VK_DEAD_TILDE = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_TILDE);
    self->VK_DEAD_MACRON = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_MACRON);
    self->VK_DEAD_BREVE = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_BREVE);
    self->VK_DEAD_ABOVEDOT = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_ABOVEDOT);
    self->VK_DEAD_DIAERESIS = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_DIAERESIS);
    self->VK_DEAD_ABOVERING = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_ABOVERING);
    self->VK_DEAD_DOUBLEACUTE = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_DOUBLEACUTE);
    self->VK_DEAD_CARON = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_CARON);
    self->VK_DEAD_CEDILLA = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_CEDILLA);
    self->VK_DEAD_OGONEK = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_OGONEK);
    self->VK_DEAD_IOTA = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_IOTA);
    self->VK_DEAD_VOICED_SOUND = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_VOICED_SOUND);
    self->VK_DEAD_SEMIVOICED_SOUND = (KeyEvent_staticInit(), KeyEvent_VK_DEAD_SEMIVOICED_SOUND);
    self->VK_AMPERSAND = (KeyEvent_staticInit(), KeyEvent_VK_AMPERSAND);
    self->VK_ASTERISK = (KeyEvent_staticInit(), KeyEvent_VK_ASTERISK);
    self->VK_QUOTEDBL = (KeyEvent_staticInit(), KeyEvent_VK_QUOTEDBL);
    self->VK_LESS = (KeyEvent_staticInit(), KeyEvent_VK_LESS);
    self->VK_GREATER = (KeyEvent_staticInit(), KeyEvent_VK_GREATER);
    self->VK_BRACELEFT = (KeyEvent_staticInit(), KeyEvent_VK_BRACELEFT);
    self->VK_BRACERIGHT = (KeyEvent_staticInit(), KeyEvent_VK_BRACERIGHT);
    self->VK_AT = (KeyEvent_staticInit(), KeyEvent_VK_AT);
    self->VK_COLON = (KeyEvent_staticInit(), KeyEvent_VK_COLON);
    self->VK_CIRCUMFLEX = (KeyEvent_staticInit(), KeyEvent_VK_CIRCUMFLEX);
    self->VK_DOLLAR = (KeyEvent_staticInit(), KeyEvent_VK_DOLLAR);
    self->VK_EURO_SIGN = (KeyEvent_staticInit(), KeyEvent_VK_EURO_SIGN);
    self->VK_EXCLAMATION_MARK = (KeyEvent_staticInit(), KeyEvent_VK_EXCLAMATION_MARK);
    self->VK_INVERTED_EXCLAMATION_MARK = (KeyEvent_staticInit(), KeyEvent_VK_INVERTED_EXCLAMATION_MARK);
    self->VK_LEFT_PARENTHESIS = (KeyEvent_staticInit(), KeyEvent_VK_LEFT_PARENTHESIS);
    self->VK_NUMBER_SIGN = (KeyEvent_staticInit(), KeyEvent_VK_NUMBER_SIGN);
    self->VK_PLUS = (KeyEvent_staticInit(), KeyEvent_VK_PLUS);
    self->VK_RIGHT_PARENTHESIS = (KeyEvent_staticInit(), KeyEvent_VK_RIGHT_PARENTHESIS);
    self->VK_UNDERSCORE = (KeyEvent_staticInit(), KeyEvent_VK_UNDERSCORE);
    self->VK_WINDOWS = (KeyEvent_staticInit(), KeyEvent_VK_WINDOWS);
    self->VK_CONTEXT_MENU = (KeyEvent_staticInit(), KeyEvent_VK_CONTEXT_MENU);
    self->VK_FINAL = (KeyEvent_staticInit(), KeyEvent_VK_FINAL);
    self->VK_CONVERT = (KeyEvent_staticInit(), KeyEvent_VK_CONVERT);
    self->VK_NONCONVERT = (KeyEvent_staticInit(), KeyEvent_VK_NONCONVERT);
    self->VK_ACCEPT = (KeyEvent_staticInit(), KeyEvent_VK_ACCEPT);
    self->VK_MODECHANGE = (KeyEvent_staticInit(), KeyEvent_VK_MODECHANGE);
    self->VK_KANA = (KeyEvent_staticInit(), KeyEvent_VK_KANA);
    self->VK_KANJI = (KeyEvent_staticInit(), KeyEvent_VK_KANJI);
    self->VK_ALPHANUMERIC = (KeyEvent_staticInit(), KeyEvent_VK_ALPHANUMERIC);
    self->VK_KATAKANA = (KeyEvent_staticInit(), KeyEvent_VK_KATAKANA);
    self->VK_HIRAGANA = (KeyEvent_staticInit(), KeyEvent_VK_HIRAGANA);
    self->VK_FULL_WIDTH = (KeyEvent_staticInit(), KeyEvent_VK_FULL_WIDTH);
    self->VK_HALF_WIDTH = (KeyEvent_staticInit(), KeyEvent_VK_HALF_WIDTH);
    self->VK_ROMAN_CHARACTERS = (KeyEvent_staticInit(), KeyEvent_VK_ROMAN_CHARACTERS);
    self->VK_ALL_CANDIDATES = (KeyEvent_staticInit(), KeyEvent_VK_ALL_CANDIDATES);
    self->VK_PREVIOUS_CANDIDATE = (KeyEvent_staticInit(), KeyEvent_VK_PREVIOUS_CANDIDATE);
    self->VK_CODE_INPUT = (KeyEvent_staticInit(), KeyEvent_VK_CODE_INPUT);
    self->VK_JAPANESE_KATAKANA = (KeyEvent_staticInit(), KeyEvent_VK_JAPANESE_KATAKANA);
    self->VK_JAPANESE_HIRAGANA = (KeyEvent_staticInit(), KeyEvent_VK_JAPANESE_HIRAGANA);
    self->VK_JAPANESE_ROMAN = (KeyEvent_staticInit(), KeyEvent_VK_JAPANESE_ROMAN);
    self->VK_KANA_LOCK = (KeyEvent_staticInit(), KeyEvent_VK_KANA_LOCK);
    self->VK_INPUT_METHOD_ON_OFF = (KeyEvent_staticInit(), KeyEvent_VK_INPUT_METHOD_ON_OFF);
    self->VK_CUT = (KeyEvent_staticInit(), KeyEvent_VK_CUT);
    self->VK_COPY = (KeyEvent_staticInit(), KeyEvent_VK_COPY);
    self->VK_PASTE = (KeyEvent_staticInit(), KeyEvent_VK_PASTE);
    self->VK_UNDO = (KeyEvent_staticInit(), KeyEvent_VK_UNDO);
    self->VK_AGAIN = (KeyEvent_staticInit(), KeyEvent_VK_AGAIN);
    self->VK_FIND = (KeyEvent_staticInit(), KeyEvent_VK_FIND);
    self->VK_PROPS = (KeyEvent_staticInit(), KeyEvent_VK_PROPS);
    self->VK_STOP = (KeyEvent_staticInit(), KeyEvent_VK_STOP);
    self->VK_COMPOSE = (KeyEvent_staticInit(), KeyEvent_VK_COMPOSE);
    self->VK_ALT_GRAPH = (KeyEvent_staticInit(), KeyEvent_VK_ALT_GRAPH);
    self->VK_BEGIN = (KeyEvent_staticInit(), KeyEvent_VK_BEGIN);
    self->VK_UNDEFINED = (KeyEvent_staticInit(), KeyEvent_VK_UNDEFINED);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ABKeyEventWrapper*) getInstance {
        return (ABKeyEventWrapper_staticInit(), ABKeyEventWrapper_instance);
}

@end

