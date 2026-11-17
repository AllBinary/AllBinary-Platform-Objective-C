
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
        



        #ifndef ORG_ALLBINARY_GRAPHICS_FORM_SCROLLSELECTIONFORMVERICALDX_CPP
        #define ORG_ALLBINARY_GRAPHICS_FORM_SCROLLSELECTIONFORMVERICALDX_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/graphics/form/ScrollSelectionFormVericalDx.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
#include <org/allbinary/graphics/form/item/ABCustomItem.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/graphics/form/ItemIndexDx.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"


ScrollSelectionFormVericalDx::ScrollSelectionFormVericalDx(ScrollSelectionForm* scrollSelectionForm){
this->scrollSelectionForm= scrollSelectionForm;
    
}


                //@Throws(Exception.constructor)
            
    auto ScrollSelectionFormVericalDx::getDx(int32_t index, ABCustomItem* item, int32_t dx, int32_t dy) -> int32_t{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return this->scrollSelectionForm->getSelectedIndexForPointVerticalDx(index, item, dx, dy);;
    
}




        #endif //ORG_ALLBINARY_GRAPHICS_FORM_SCROLLSELECTIONFORMVERICALDX_CPP
