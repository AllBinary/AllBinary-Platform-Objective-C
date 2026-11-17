
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
        



        #ifndef ORG_ALLBINARY_GRAPHICS_FORM_HORIZONTALITEMINDEXDX_H
        #define ORG_ALLBINARY_GRAPHICS_FORM_HORIZONTALITEMINDEXDX_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
class ABCustomItem;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/graphics/form/ItemIndexDx.h"
class ScrollCurrentSelectionForm;

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class HorizontalItemIndexDx: public ItemIndexDx {

    private: ScrollCurrentSelectionForm* scrollCurrentSelectionForm;

public: HorizontalItemIndexDx(ScrollCurrentSelectionForm* scrollCurrentSelectionForm);

                //@Throws(Exception.constructor)
            
    public: int32_t getDx(int32_t index, ABCustomItem* item, int32_t dx, int32_t dy);

};

            


        #endif //ORG_ALLBINARY_GRAPHICS_FORM_HORIZONTALITEMINDEXDX_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_GRAPHICS_FORM_HORIZONTALITEMINDEXDX_H_COMPLETE)
        #define ORG_ALLBINARY_GRAPHICS_FORM_HORIZONTALITEMINDEXDX_H_COMPLETE
        #if __has_include(<org/allbinary/graphics/form/item/ABCustomItem.h>)
#include <org/allbinary/graphics/form/item/ABCustomItem.h>
#endif
#if __has_include("org/allbinary/graphics/form/ItemIndexDx.h")
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#endif
#if __has_include("org/allbinary/graphics/form/ScrollCurrentSelectionForm.h")
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"
#endif

        #endif
    
