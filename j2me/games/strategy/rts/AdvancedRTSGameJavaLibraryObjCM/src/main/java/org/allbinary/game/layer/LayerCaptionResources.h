
        /*
                *  
                *  AllBinary Open License Version 1 
                *  Copyright (c) 2002 AllBinary 
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
        



        #ifndef ORG_ALLBINARY_GAME_LAYER_LAYERCAPTIONRESOURCES_H
        #define ORG_ALLBINARY_GAME_LAYER_LAYERCAPTIONRESOURCES_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Object.h"
        
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        
                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class LayerCaptionResources
            : public virtual Object
         {

    private: static LayerCaptionResources* instance_owner();
    private: static LayerCaptionResources* instance;

    public: static LayerCaptionResources* getInstance();

private: LayerCaptionResources();

    public: const std::string RESOURCE = "/unit_message_bubbled_box.png";

};

            


        #endif //ORG_ALLBINARY_GAME_LAYER_LAYERCAPTIONRESOURCES_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_GAME_LAYER_LAYERCAPTIONRESOURCES_H_COMPLETE)
        #define ORG_ALLBINARY_GAME_LAYER_LAYERCAPTIONRESOURCES_H_COMPLETE
        
        #endif
    
