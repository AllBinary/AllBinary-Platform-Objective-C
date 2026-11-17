
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
        



        #ifndef ORG_ALLBINARY_LOGIC_IO_ABFILEINPUTSTREAM_CPP
        #define ORG_ALLBINARY_LOGIC_IO_ABFILEINPUTSTREAM_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/logic/io/AbFileInputStream.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
#include <java/io/File.h>

      
#include <java/io/FileInputStream.h>

      
#include <java/io/FileNotFoundException.h>

      
#include <org/allbinary/logic/io/file/AbFile.h>

      
#include <org/allbinary/logic/io/file/AbFileNativeUtil.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        

AbFileInputStream::AbFileInputStream(std::string name) : FileInputStream(name){

                        //super/this constructor call is in the constructor initializer list.
                    

                            //For kotlin this is before the body of the constructor.
                    
}


                //@Throws(FileNotFoundException.constructor)
            
    auto AbFileInputStream::createFromAbFile(AbFile* file) -> AbFileInputStream*{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return new AbFileInputStream(AbFileNativeUtil::get(file)->getPath());
    
}


                //@Throws(FileNotFoundException.constructor)
            
    auto AbFileInputStream::createFromFile(File* file) -> AbFileInputStream*{



                        //if statement needs to be on the same line and ternary does not work the same way.
                        
                        
                        return new AbFileInputStream(file->getPath());
    
}




        #endif //ORG_ALLBINARY_LOGIC_IO_ABFILEINPUTSTREAM_CPP
