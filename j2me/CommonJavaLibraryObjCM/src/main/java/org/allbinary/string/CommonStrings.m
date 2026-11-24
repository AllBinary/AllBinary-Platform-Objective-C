// Generated Code Do Not Modify
#include "org/allbinary/string/CommonStrings.h"


static CommonStrings* CommonStrings_instance;

void CommonStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CommonStrings_instance = ((CommonStrings*) [((CommonStrings*) [CommonStrings alloc]) init]);
}

@implementation CommonStrings

- (void) initFields {
    self->EMPTY = "Empty";
    self->CREATE_IMAGE = "createImage";
    self->PLEASE_WAIT = "Please Wait";
    self->PLEASE_WAIT_FOR_SERVER = "Please Wait Getting Data From Server...";
    self->PERIODS = "...";
    self->LOADING = "Loading...";
    self->CONSTRUCTOR = "Constructor";
    self->START = "Start";
    self->END = "End";
    self->EXCEPTION = "Exception";
    self->EXCEPTION_LABEL = "Exception: ";
    self->CLEANUP = "cleanup";
    self->INIT = "init";
    self->CLOSE = "close";
    self->UP = "up";
    self->DOWN = "down";
    self->LEFT = "left";
    self->RIGHT = "right";
    self->DIRECTION_NAME = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){ self->DOWN, self->LEFT, self->RIGHT, self->UP }) / sizeof(const char*), (const char*[]){ self->DOWN, self->LEFT, self->RIGHT, self->UP }));
    self->CREATE = "Create";
    self->REMOVE = "Remove";
    self->UPDATE = "Update";
    self->DELETE = "Delete";
    self->delete = "delete";
    self->LOAD = "load";
    self->SAVE = "save";
    self->ADD = "Add";
    self->DROP = "Drop";
    self->INSERT = "Insert";
    self->VISIT = "visit";
    self->START_METHOD_NAME = self->START;
    self->END_METHOD_NAME = "end";
    self->GET = "get";
    self->PROCESS = "process";
    self->GET_INSTANCE = "getInstance";
    self->GET_LIST = "getList";
    self->RUN = "run";
    self->START_RUNNABLE = "Start Runnable";
    self->RUNNING = "Running";
    self->END_RUNNABLE = "End Runnable";
    self->DISABLE = "disable";
    self->ENABLE = "enable";
    self->SUCCESS = "Command Success";
    self->FAILURE = "Command Failed";
    self->NOT_IMPLEMENTED = "Not Implemented";
    self->UNKNOWN = "Unknown";
    self->ON_EVENT = "onEvent";
    self->IS_VALID = "isValid";
    self->TOSTRING = "toString";
    self->ADD_LISTENER = "addListener";
    self->REMOVE_LISTENER = "removeListener";
    self->SIZE = "size";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CommonStrings*) getInstance {
        return (CommonStrings_staticInit(), CommonStrings_instance);
}

@end

