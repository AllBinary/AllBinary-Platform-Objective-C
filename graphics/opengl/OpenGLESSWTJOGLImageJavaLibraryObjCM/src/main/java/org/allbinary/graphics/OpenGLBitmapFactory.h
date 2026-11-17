
        /* Generated Code Do Not Modify */
        



        #ifndef ORG_ALLBINARY_GRAPHICS_OPENGLBITMAPFACTORY_H
        #define ORG_ALLBINARY_GRAPHICS_OPENGLBITMAPFACTORY_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
#include <java/io/IOException.h>
#include <java/io/InputStream.h>
class Image;
class ImageFactory;
#include <org/allbinary/platform/graphics/PlatformBitmapBaseFactory.h>
class PlatformBitmapBase;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        class OpenGLBitmapConfig;
class OpenGLBitmap;

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class OpenGLBitmapFactory: public PlatformBitmapBaseFactory {

    private: static OpenGLBitmapFactory* instance_owner();
    private: static OpenGLBitmapFactory* instance;

    public: static OpenGLBitmapFactory* getInstance();


            
    public: OpenGLBitmapFactory();
        
    public: OpenGLBitmapConfig* ARGB_8888;

    public: OpenGLBitmap* createBitmap(int32_t width, int32_t height, OpenGLBitmapConfig* config);

                //@Throws(Exception.constructor)
            
    public: OpenGLBitmap* decodeStream(InputStream* inputStream);

    public: PlatformBitmapBase* createBitmap(Image* image);

};

            


        #endif //ORG_ALLBINARY_GRAPHICS_OPENGLBITMAPFACTORY_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_GRAPHICS_OPENGLBITMAPFACTORY_H_COMPLETE)
        #define ORG_ALLBINARY_GRAPHICS_OPENGLBITMAPFACTORY_H_COMPLETE
        #if __has_include(<java/io/IOException.h>)
#include <java/io/IOException.h>
#endif
#if __has_include(<java/io/InputStream.h>)
#include <java/io/InputStream.h>
#endif
#if __has_include(<javax/microedition/lcdui/Image.h>)
#include <javax/microedition/lcdui/Image.h>
#endif
#if __has_include(<org/allbinary/image/ImageFactory.h>)
#include <org/allbinary/image/ImageFactory.h>
#endif
#if __has_include(<org/allbinary/platform/graphics/PlatformBitmapBaseFactory.h>)
#include <org/allbinary/platform/graphics/PlatformBitmapBaseFactory.h>
#endif
#if __has_include(<org/allbinary/platform/graphics/PlatformBitmapBase.h>)
#include <org/allbinary/platform/graphics/PlatformBitmapBase.h>
#endif
#if __has_include("org/allbinary/graphics/OpenGLBitmapConfig.h")
#include "org/allbinary/graphics/OpenGLBitmapConfig.h"
#endif
#if __has_include("org/allbinary/graphics/OpenGLBitmap.h")
#include "org/allbinary/graphics/OpenGLBitmap.h"
#endif

        #endif
    
