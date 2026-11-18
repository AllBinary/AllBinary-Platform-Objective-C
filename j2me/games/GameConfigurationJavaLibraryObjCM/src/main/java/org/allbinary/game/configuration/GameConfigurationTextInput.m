// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameConfigurationTextInput.h"
#include "javax/microedition/lcdui/TextField.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/ABHashtable.h"


static ABHashtable* GameConfigurationTextInput_hashtable;
GameConfigurationTextInput* GameConfigurationTextInput_SIMULATOR_IP;
GameConfigurationTextInput* GameConfigurationTextInput_SIMULATOR_PORT;

void GameConfigurationTextInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameConfigurationTextInput_hashtable = [[StdUtil getInstance] createHashtable];
    GameConfigurationTextInput_SIMULATOR_IP = [((GameConfigurationTextInput*) [GameConfigurationTextInput alloc]) init:"IP: " :"192.168.1.3"];
    GameConfigurationTextInput_SIMULATOR_PORT = [((GameConfigurationTextInput*) [GameConfigurationTextInput alloc]) init:"Port: " :"8010"];
}

@implementation GameConfigurationTextInput

- (void) initFields {
    self->label = [StringUtil getInstance]->EMPTY_STRING;
    self->text = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(const char*)label :(const char*)text {
    self = [super init];
    [self initFields];
        [self setText:text];
        [self setLabel:label];
        [(GameConfigurationTextInput_staticInit(), GameConfigurationTextInput_hashtable) put:JAVA_BOX([self getLabel]) :JAVA_BOX(self)];
    return self;
}


+ (void) update:(TextField*)textField {
        id anyType = ((id) [textField getLabel]);
        GameConfigurationTextInput* gameConfigurationTextInput = ((GameConfigurationTextInput*) [(GameConfigurationTextInput_staticInit(), GameConfigurationTextInput_hashtable) get:JAVA_BOX(anyType)]);
        [gameConfigurationTextInput setText:[textField getString]];
}


- (void) setText:(const char*)text {
        self->text = text;
}


- (const char*) getText {
        return self->text;
}


- (void) setLabel:(const char*)label {
        self->label = label;
}


- (const char*) getLabel {
        return self->label;
}


+ (ABHashtable*) getHashtable {
        return (GameConfigurationTextInput_staticInit(), GameConfigurationTextInput_hashtable);
}

@end

