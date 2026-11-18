// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/graphics/form/FormType.h"


static FormTypeFactory* FormTypeFactory_instance;

void FormTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FormTypeFactory_instance = [((FormTypeFactory*) [FormTypeFactory alloc]) init];
}

@implementation FormTypeFactory

- (void) initFields {
    self->UNK = "Unknown FormType";
    self->NULL_FORM_TYPE = [((FormType*) [FormType alloc]) init:[StringUtil getInstance]->NULL_STRING];
    self->TEMP_HORIZONTAL_FORM = [((FormType*) [FormType alloc]) init:"TempHorizontal"];
    self->HORIZONTAL_FORM = [((FormType*) [FormType alloc]) init:"Horizontal"];
    self->VERTICAL_CENTER_FORM = [((FormType*) [FormType alloc]) init:"Vertical"];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (FormTypeFactory*) getInstance {
        return (FormTypeFactory_staticInit(), FormTypeFactory_instance);
}


- (FormType*) getFormType {
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        FormType* formType = nullptr;
        if ([displayInfo isPortrait]) {
            formType = self->VERTICAL_CENTER_FORM;
        } else {
            formType = self->HORIZONTAL_FORM;
        }
        return formType;
}

@end

