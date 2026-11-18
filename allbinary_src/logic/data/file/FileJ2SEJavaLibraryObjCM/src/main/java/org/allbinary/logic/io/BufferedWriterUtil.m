// Generated Code Do Not Modify
#include "org/allbinary/logic/io/BufferedWriterUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/io/file/AbFile.h"
#include "org/allbinary/logic/io/file/AbFileNativeUtil.h"
#include "org/allbinary/logic/io/path/AbPathData.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"


static BufferedWriterUtil* BufferedWriterUtil_instance;

void BufferedWriterUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BufferedWriterUtil_instance = [((BufferedWriterUtil*) [BufferedWriterUtil alloc]) init];
}

@implementation BufferedWriterUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->commonLabels = [CommonLabels getInstance];
    self->REMOVING_OLD = "Remove old for overwriting: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BufferedWriterUtil*) getInstance {
        return (BufferedWriterUtil_staticInit(), BufferedWriterUtil_instance);
}


// throws Exception
- (void) overwrite:(const char*)path :(const char*)data {
        AbFile* abFile = [AbFile createAbFile:path];
        if ([abFile exists]) {
            [self->logUtil putF:java_concat(self->REMOVING_OLD, path) :self :self->commonStrings->CREATE];
            [abFile delete];
        } else {
            const char* name = [[AbPathData getInstance] removeNameFromPath:path];
            AbFile* abFileDirectory = [AbFile createAbFile:name];
            if ([abFileDirectory exists]) {
            } else {
                StringMaker* stringBuilder = [((StringMaker*) [StringMaker alloc]) init];
                [self->logUtil putF:[[[[stringBuilder append:self->commonStrings->CREATE] append:self->commonLabels->COLON_SEP] append:name] toString] :self :self->commonStrings->CREATE];
                bool result = [abFileDirectory mkdirs];
                [stringBuilder delete:0 :[stringBuilder length]];
                [self->logUtil putF:[[[stringBuilder append:self->commonLabels->RESULT_] appendboolean:result] toString] :self :self->commonStrings->CREATE];
            }
        }
        [self write:abFile :data];
}


// throws Exception
- (void) overwrite_2:(AbFile*)abFile :(const char*)data {
        if ([abFile exists]) {
            [self->logUtil putF:java_concat(self->REMOVING_OLD, [abFile getPath]) :self :self->commonStrings->CREATE];
            [abFile delete];
        } else {
            const char* name = [[AbPathData getInstance] removeNameFromPath:[abFile getAbsolutePath]];
            AbFile* abFileDirectory = [AbFile createAbFile:name];
            if ([abFileDirectory exists]) {
            } else {
                StringMaker* stringBuilder = [((StringMaker*) [StringMaker alloc]) init];
                [self->logUtil putF:[[[[stringBuilder append:self->commonStrings->CREATE] append:self->commonLabels->COLON_SEP] append:name] toString] :self :self->commonStrings->CREATE];
                bool result = [abFileDirectory mkdirs];
                [stringBuilder delete:0 :[stringBuilder length]];
                [self->logUtil putF:[[[stringBuilder append:self->commonLabels->RESULT_] appendboolean:result] toString] :self :self->commonStrings->CREATE];
            }
        }
        [self write:abFile :data];
}


// throws Exception
- (void) write:(AbFile*)abFile :(const char*)data {
        BufferedWriter* fileOut = [((BufferedWriter*) [BufferedWriter alloc]) init:[((FileWriter*) [FileWriter alloc]) init:[AbFileNativeUtil get:abFile]]];
        [fileOut write:data :0 :((int32_t) strlen(data))];
        [fileOut newLine];
        [fileOut flush];
}

@end

