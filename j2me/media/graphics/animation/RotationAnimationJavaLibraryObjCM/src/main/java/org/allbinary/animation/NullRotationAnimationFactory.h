
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
        



        #ifndef ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATIONFACTORY_H
        #define ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATIONFACTORY_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <vector>
        
            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Object.h"
        
            #include "java/lang/Exception.h"
        
class ScaleProperties;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
class RotationAnimation;
class NullRotationAnimation2;
class Animation;

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class NullRotationAnimationFactory
            : public virtual Object
        , public virtual AnimationInterfaceFactoryInterface, public virtual ProceduralAnimationInterfaceFactoryInterface {

    private: static NullRotationAnimationFactory* NULL_ROTATION_ANIMATION_FACTORY_owner();
    private: static NullRotationAnimationFactory* NULL_ROTATION_ANIMATION_FACTORY;

    public: static NullRotationAnimationFactory* getFactoryInstance();

    public: std::vector<RotationAnimation*> NULL_ROTATION_ANIMATION_ARRAY;

    private: Animation* NULL_ANIMATION;

private: NullRotationAnimationFactory();

    public: Animation* getInstance(int32_t instanceId);

                //@Throws(Exception.constructor)
            
    public: Animation* getInstanceAnimation(Animation* animationInterface);

    public: void setInitialScale(ScaleProperties* scaleProperties);

};

            


        #endif //ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATIONFACTORY_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATIONFACTORY_H_COMPLETE)
        #define ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATIONFACTORY_H_COMPLETE
        #if __has_include(<org/allbinary/media/ScaleProperties.h>)
#include <org/allbinary/media/ScaleProperties.h>
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/RotationAnimation.h")
#include "org/allbinary/animation/RotationAnimation.h"
#endif
#if __has_include("org/allbinary/animation/NullRotationAnimation2.h")
#include "org/allbinary/animation/NullRotationAnimation2.h"
#endif
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

        #endif
    
