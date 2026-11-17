
        /*
                * 
                *  AllBinary Open License Version 1
                *  Copyright (c) 2011 AllBinary
                *  
                *  By agreeing to this license you and any business entity you represent are
                *  legally bound to the AllBinary Open License Version 1 legal agreement.
                *  
                *  You may obtain the AllBinary Open License Version 1 legal agreement from
                *  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
                *  
                *  Created By: Travis Berthelot  
        */
        
        /* Generated Code Do Not Modify */
        



        #ifndef ORG_ALLBINARY_GRAPHICS_FORM_TEMPHORIZONTALITEMINDEXDX_CPP
        #define ORG_ALLBINARY_GRAPHICS_FORM_TEMPHORIZONTALITEMINDEXDX_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/graphics/form/TempHorizontalItemIndexDx.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
#include <org/allbinary/graphics/form/item/ABCustomItem.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/graphics/form/ItemIndexDx.h"
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"


TempHorizontalItemIndexDx::TempHorizontalItemIndexDx(ScrollCurrentSelectionForm* scrollCurrentSelectionForm){
this->scrollCurrentSelectionForm= scrollCurrentSelectionForm;
    
}


                //@Throws(Exception.constructor)
            
    auto TempHorizontalItemIndexDx::getDx(int32_t index, ABCustomItem* item, int32_t dx, int32_t dy) -> int32_t{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return this->scrollCurrentSelectionForm->getXTempHorizontalForm(index, item, dx, dy);;
    
}




        #endif //ORG_ALLBINARY_GRAPHICS_FORM_TEMPHORIZONTALITEMINDEXDX_CPP
