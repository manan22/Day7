//
//  main.m
//  Day7(1)
//
//  Created by macadmin on 2014-05-13.
//  Copyright (c) 2014 Manan Pandya. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char c;
        NSLog(@"Insert any Character:");
        scanf("%c",&c);
        
        if((c>='a' && c<='z') || (c>='A' && c<='Z'))
        {
            NSLog(@"The Character is Alphabetic");
        }
        else if (c>='0' && c<='9')
        {
            NSLog(@"The Character is Numeric");
        }
        else
        {
            NSLog(@"The Character is Special Character");
        }
        
    }
    return 0;
}

