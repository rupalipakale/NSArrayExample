//
//  main.m
//  RPArray
//
//  Created by Student P_07 on 17/11/16.
//  Copyright © 2016 Rupali Pakale. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *friendNames = [[NSArray alloc]initWithObjects:@"Mohsin",@"Siddharth",@"Pallavi",@"Bhagyashri",@"Afsana",@"Rupali", nil];
        
        int index;
        NSInteger limit=[friendNames count];
        
        //Print array using simple for loop
        for(index=0;index<limit;index++)
        {
            NSString *name=[friendNames objectAtIndex:index];
            NSLog(@"%@\n",name);
        }
        NSLog(@"%@",friendNames);
        
        //Print array using for in loop
        for (NSString *str in friendNames) {
            NSLog(@"%@",str);
        }
        
        //Print sorted array
        NSArray *sortedStrings =
        [friendNames sortedArrayUsingSelector:@selector(compare:)];
        
        NSLog(@" Sorted array=%@",sortedStrings);

    }
    return 0;
}
