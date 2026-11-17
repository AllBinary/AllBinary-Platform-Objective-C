
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
        



        #ifndef ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMVERTICALPAINTABLE_H
        #define ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMVERTICALPAINTABLE_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
class Graphics;
class ABCustomItem;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/graphics/form/ItemIndexPaintable.h"
class MultipleScrollSelectionHorizontalForm;

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class MultipleScrollSelectionFormVerticalPaintable: public ItemIndexPaintable {

    private: MultipleScrollSelectionHorizontalForm* multipleScrollSelectionForm;

public: MultipleScrollSelectionFormVerticalPaintable(MultipleScrollSelectionHorizontalForm* multipleScrollSelectionForm);

                //@Throws(Exception.constructor)
            
    public: int32_t paint(Graphics* graphics, int32_t index, ABCustomItem* item, int32_t dx, int32_t dy);

};

            


        #endif //ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMVERTICALPAINTABLE_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMVERTICALPAINTABLE_H_COMPLETE)
        #define ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMVERTICALPAINTABLE_H_COMPLETE
        #if __has_include(<javax/microedition/lcdui/Graphics.h>)
#include <javax/microedition/lcdui/Graphics.h>
#endif
#if __has_include(<org/allbinary/graphics/form/item/ABCustomItem.h>)
#include <org/allbinary/graphics/form/item/ABCustomItem.h>
#endif
#if __has_include("org/allbinary/graphics/form/ItemIndexPaintable.h")
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#endif
#if __has_include("org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h")
#include "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h"
#endif

        #endif
    
