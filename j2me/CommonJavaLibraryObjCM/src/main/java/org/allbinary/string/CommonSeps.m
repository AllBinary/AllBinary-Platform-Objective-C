// Generated Code Do Not Modify
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/logic/string/StringMaker.h"


static CommonSeps* CommonSeps_instance;

void CommonSeps_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CommonSeps_instance = [((CommonSeps*) [CommonSeps alloc]) init];
}

@implementation CommonSeps

- (void) initFields {
    self->NEW_LINE = "\n";
    self->SEMICOLON = ";";
    self->EQUALS = "=";
    self->SPACE = " ";
    self->COMMA = ",";
    self->COLON = ":";
    self->PERIOD = ".";
    self->UNDERSCORE = "_";
    self->COLON_SEP = [[[[((StringMaker*) [StringMaker alloc]) init] append:self->COLON] append:self->SPACE] toString];
    self->COMMA_SEP = [[[[((StringMaker*) [StringMaker alloc]) init] append:self->COMMA] append:self->SPACE] toString];
    self->PARENTHESIS_OPEN = "(";
    self->PARENTHESIS_CLOSE = ")";
    self->BRACE_OPEN = "{";
    self->BRACE_CLOSE = "}";
    self->BRACKET_OPEN = "[";
    self->BRACKET_CLOSE = "]";
    self->DASH = "-";
    self->PERCENT = "%";
    self->AMPERSAND = "&";
    self->FORWARD_SLASH = "/";
    self->BACK_SLASH = "\\";
    self->QUESTION = "?";
    self->QUOTE = "\"";
    self->QUOTE_END = "\",";
    self->COMMENT = "//";
    self->INDENT = "    ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CommonSeps*) getInstance {
        return (CommonSeps_staticInit(), CommonSeps_instance);
}

@end

