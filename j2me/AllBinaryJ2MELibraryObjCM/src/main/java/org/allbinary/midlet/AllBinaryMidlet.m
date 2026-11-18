// Generated Code Do Not Modify
#include "org/allbinary/midlet/AllBinaryMidlet.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/Display.h"
#include "javax/microedition/lcdui/Displayable.h"
#include "javax/microedition/lcdui/NullCanvas.h"
#include "javax/microedition/midlet/MIDletStateChangeException.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/system/Memory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/util/ABHashtable.h"


static id AllBinaryMidlet_NULL_ALLBINARY_MIDLET;

void AllBinaryMidlet_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryMidlet_NULL_ALLBINARY_MIDLET = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation AllBinaryMidlet

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->SET_DISPLAY = "setDisplay";
    self->SETTING_ = "Setting: ";
    self->_DISPLAY__ = " Display: ";
    self->SETTING_NO_TITLE = "Setting: No Title, Display: ";
    self->hashtable = [[StdUtil getInstance] createHashtable];
    self->midletDestroyed = false;
}


+ (AllBinaryMidlet*) getNullInstance {
        if ((AllBinaryMidlet_staticInit(), AllBinaryMidlet_NULL_ALLBINARY_MIDLET) == [NullUtil getInstance]->NULL_OBJECT) {
            AllBinaryMidlet_NULL_ALLBINARY_MIDLET = [((AllBinaryMidlet*) [AllBinaryMidlet alloc]) init];
        }
        return ((AllBinaryMidlet*) (AllBinaryMidlet_staticInit(), AllBinaryMidlet_NULL_ALLBINARY_MIDLET));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [self->logUtil putF:self->commonStrings->CONSTRUCTOR :self :"AllBinaryMidlet::AllBinaryMidlet"];
    return self;
}


- (void) setDisplay:(Displayable*)newDisplay {
        const char* title = [StringUtil getInstance]->EMPTY_STRING;
        if (newDisplay != (NullCanvas_staticInit(), NullCanvas_NULL_CANVAS)) {
            title = [newDisplay getTitle];
            [self->logUtil putF:[[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->SETTING_] append:title] append:self->_DISPLAY__] append:[[StringUtil getInstance] toString:newDisplay]] toString] :self :self->SET_DISPLAY];
        }
        Display* display = [self getDisplay];
        [display setCurrent:newDisplay];
}


- (Display*) getDisplay {
        return [Display getDisplay:self];
}


- (Displayable*) getCurrentDisplayable {
        return [[Display getDisplay:self] getCurrent];
}


- (void) setDestroyed:(bool)destroyed {
        self->midletDestroyed = destroyed;
}


- (bool) isDestroyed {
        return self->midletDestroyed;
}


// throws MIDletStateChangeException
- (void) startApp {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) pauseApp {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) destroyAppInRunnable:(bool)unconditional :(bool)isProgress {
}


- (void) destroyApp:(bool)unconditional {
        const char* METHOD_NAME = "AllBinaryMidlet::destroyApp";
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START :self :METHOD_NAME];
            [PreLogUtil put:[Memory getInfo] :self :METHOD_NAME];
            [self setDestroyed:true];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :METHOD_NAME :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) setStartStateHashtable:(ABHashtable*)hashtable {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] append:[[StringUtil getInstance] toString:hashtable]] toString] :self :"setStartStateHashtable"];
        self->hashtable = hashtable;
}


// throws Exception
- (ABHashtable*) getStartStateHashtable {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] append:[[StringUtil getInstance] toString:self->hashtable]] toString] :self :"getStartStateHashtable"];
        return self->hashtable;
}


// throws Exception
- (ABHashtable*) getCurrentStateHashtable {
        [self->logUtil putF:self->commonStrings->START :self :"getStateHashtable"];
        return [StdUtil getInstance]->NULL_TABLE;
}


- (void) commandAction:(Command*)command :(Displayable*)displayable {
}

@end

