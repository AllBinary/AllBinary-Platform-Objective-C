
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
        



        #ifndef ORG_ALLBINARY_GAME_PAINT_HELP_UPDATEMYFONTPROPERTIES_H
        #define ORG_ALLBINARY_GAME_PAINT_HELP_UPDATEMYFONTPROPERTIES_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <vector>
        
            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Object.h"
        
class NullUtil;
class StringUtil;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        
                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class UpdateMyFontProperties
            : public virtual Object
         {


            
    public: UpdateMyFontProperties();
        
    public: std::vector<std::string> actionStringArray;

    public: std::vector<int32_t> keymappingBeginWidthArray;

    public: std::vector<int32_t> actionStringDeltaXArray;

    public: std::vector<std::vector<int32_t>> inputDeltaXArray;

    public: std::vector<std::vector<std::string>> sepArray;

    public: std::vector<std::vector<int32_t>> sepWidthArray;

    public: int32_t charHeight= 0;

};

            


        #endif //ORG_ALLBINARY_GAME_PAINT_HELP_UPDATEMYFONTPROPERTIES_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_GAME_PAINT_HELP_UPDATEMYFONTPROPERTIES_H_COMPLETE)
        #define ORG_ALLBINARY_GAME_PAINT_HELP_UPDATEMYFONTPROPERTIES_H_COMPLETE
        #if __has_include(<org/allbinary/logic/NullUtil.h>)
#include <org/allbinary/logic/NullUtil.h>
#endif
#if __has_include(<org/allbinary/logic/string/StringUtil.h>)
#include <org/allbinary/logic/string/StringUtil.h>
#endif

        #endif
    
