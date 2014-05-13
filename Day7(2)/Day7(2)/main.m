//
//  main.m
//  Day7(2)
//
//  Created by macadmin on 2014-05-13.
//  Copyright (c) 2014 Manan Pandya. All rights reserved.
//

#import <Foundation/Foundation.h>



    //  interface section
    @interface Calculator : NSObject
    
    -(void) setAccumulator: (double)value;
    -(void) clear;
    -(double) accumulator;

    // arithmetic methods
    
    -(void) add : (double)value;
    -(void) subtract : (double)value;
    -(void) multiply : (double)value;
    -(void) divide : (double)value;
    
    
    @end
    
    // implementation section
    @implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add:(double)value
{
    accumulator += value;
}

-(void) subtract:(double)value
{
    accumulator -= value;
}

-(void) multiply:(double)value
{
    accumulator *= value;
}

-(void) divide:(double)value
{
    accumulator /= value;
}

@end


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        double val1,val2;
        char operator;
        
        
        Calculator *myCalculator = [[Calculator alloc] init];
        
        NSLog(@"Enter Your Expression:");
        scanf("%lf %c %lf",&val1,&operator,&val2);
        
        [myCalculator setAccumulator:val1];
        
        if(operator == '+')
        {
            [myCalculator add:val2];
        }
        
        else if (operator == '-')
        {
            [myCalculator subtract:val2];
        }
        
        else if (operator == '*')
        {
            [myCalculator multiply:val2];
        }
        else if( operator == '/')
        {
            [myCalculator divide:val2];
        }
        
        NSLog(@"%.2f",[myCalculator accumulator]);
        
        
        
    }
    return 0;
}

