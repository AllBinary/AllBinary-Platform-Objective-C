
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
        



        #ifndef ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMRECTPAINTABLE_CPP
        #define ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMRECTPAINTABLE_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/graphics/form/MultipleScrollSelectionFormRectPaintable.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
#include <javax/microedition/lcdui/Graphics.h>

      
#include <org/allbinary/graphics/paint/Paintable.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h"


MultipleScrollSelectionFormRectPaintable::MultipleScrollSelectionFormRectPaintable(MultipleScrollSelectionHorizontalForm* multipleScrollSelectionForm){
this->multipleScrollSelectionForm= multipleScrollSelectionForm;
    
}


    auto MultipleScrollSelectionFormRectPaintable::paint(Graphics* graphics) -> void{
this->multipleScrollSelectionForm->fillRect(graphics);
    
}




        #endif //ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMRECTPAINTABLE_CPP
