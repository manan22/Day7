//
//  main.m
//  Day7(3)
//
//  Created by macadmin on 2014-05-13.
//  Copyright (c) 2014 Manan Pandya. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int p,d,isprime;
        
        for(p=2;p<=100;++p)
        {
            isprime = YES;
            
        
        for(d=2;d<p;++d)
        {
            if(p % d == 0)
            {
                isprime = 0;
            }
        }
        if(isprime != 0)
        {
            
            NSLog(@"%i",p);
              
        }
       
        }
    }
    return 0;
}

