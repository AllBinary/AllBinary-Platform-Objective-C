
        /*
                * 
                *  AllBinary Open License Version 1
                *  Copyright (c) 2026 AllBinary
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
        



        #ifndef ORG_ALLBINARY_MIDPUTIL_CPP
        #define ORG_ALLBINARY_MIDPUTIL_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/MIDPUtil.h"
        

            #include <vector>
        
            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Object.h"
        
#include <java/io/IOException.h>

      
#include <java/io/InputStream.h>

      
#include <javax/microedition/lcdui/Form.h>

      
#include <javax/microedition/lcdui/Image.h>

      
#include <javax/microedition/lcdui/Item.h>

      
#include <javax/microedition/media/Manager.h>

      
#include <javax/microedition/media/MediaException.h>

      
#include <javax/microedition/media/Player.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        //like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.

MIDPUtil::MIDPUtil() {
        }
        auto MIDPUtil::instance_owner() -> MIDPUtil* { static std::unique_ptr<MIDPUtil> value(new MIDPUtil()); return value.get(); }
MIDPUtil* MIDPUtil::instance = MIDPUtil::instance_owner();

    auto MIDPUtil::getInstance() -> MIDPUtil*{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return MIDPUtil::instance;
    
}


    auto MIDPUtil::createImageWH(int32_t width, int32_t height) -> Image*{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return Image::createImage(width, height);;
    
}


    auto MIDPUtil::createImageFromByteArray(std::vector<int8_t> imageData, int32_t imageOffset, int32_t imageLength) -> Image*{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return Image::createImage(imageData, imageOffset, imageLength);;
    
}


                //@Throws(IOException.constructor)
            
    auto MIDPUtil::createImageFromInputStream(InputStream* inputStream) -> Image*{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return Image::createImage(inputStream);;
    
}


                //@Throws(IOException.constructor, MediaException.constructor)
            
    auto MIDPUtil::createPlayerFromInputStream(InputStream* inputStream, std::string type) -> Player*{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return Manager::createPlayer(inputStream, type);;
    
}


    auto MIDPUtil::appendItem(Form* form, Item* item) -> int32_t{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return form->append(item);;
    
}




        #endif //ORG_ALLBINARY_MIDPUTIL_CPP
