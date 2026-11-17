
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
        



        #ifndef ORG_ALLBINARY_MIDPUTIL_H
        #define ORG_ALLBINARY_MIDPUTIL_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <vector>
        
            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Object.h"
        
#include <java/io/IOException.h>
#include <java/io/InputStream.h>
class Form;
class Image;
class Item;
class Manager;
class MediaException;
class Player;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        
                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        //like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
class MIDPUtil
            : public virtual Object
         {

    private: static MIDPUtil* instance_owner();
    private: static MIDPUtil* instance;

    public: static MIDPUtil* getInstance();


            
    public: MIDPUtil();
        
    public: Image* createImageWH(int32_t width, int32_t height);

    public: Image* createImageFromByteArray(std::vector<int8_t> imageData, int32_t imageOffset, int32_t imageLength);

                //@Throws(IOException.constructor)
            
    public: Image* createImageFromInputStream(InputStream* inputStream);

                //@Throws(IOException.constructor, MediaException.constructor)
            
    public: Player* createPlayerFromInputStream(InputStream* inputStream, std::string type);

    public: int32_t appendItem(Form* form, Item* item);

};

            


        #endif //ORG_ALLBINARY_MIDPUTIL_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_MIDPUTIL_H_COMPLETE)
        #define ORG_ALLBINARY_MIDPUTIL_H_COMPLETE
        #if __has_include(<java/io/IOException.h>)
#include <java/io/IOException.h>
#endif
#if __has_include(<java/io/InputStream.h>)
#include <java/io/InputStream.h>
#endif
#if __has_include(<javax/microedition/lcdui/Form.h>)
#include <javax/microedition/lcdui/Form.h>
#endif
#if __has_include(<javax/microedition/lcdui/Image.h>)
#include <javax/microedition/lcdui/Image.h>
#endif
#if __has_include(<javax/microedition/lcdui/Item.h>)
#include <javax/microedition/lcdui/Item.h>
#endif
#if __has_include(<javax/microedition/media/Manager.h>)
#include <javax/microedition/media/Manager.h>
#endif
#if __has_include(<javax/microedition/media/MediaException.h>)
#include <javax/microedition/media/MediaException.h>
#endif
#if __has_include(<javax/microedition/media/Player.h>)
#include <javax/microedition/media/Player.h>
#endif

        #endif
    
