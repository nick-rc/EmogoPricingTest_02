//
//  main.m
//  EmogoPricingTest_02
//
//  Created by Nick Craig on 4/3/15.
//  Copyright (c) 2015 Nick Craig. All rights reserved.
//  Copyright (c) Emogo Corporation. All rights reserved.


#import <Foundation/Foundation.h>
#import "Emogo_MessageClass.h"
#import "Emogo_CollectionClass.h"
#import "CustomerClass.h"
#import "Customer_CollectionClass.h"

/*
 
 
 ***** DEFINE EMOGO MESSAGE TYPES HERE ******
 
 ***** DEFINE CUSTOMER TYPES HERE ******
 
 */




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Emogo_CollectionClass * test_collection = [[Emogo_CollectionClass alloc] init];
        
        
        NSMutableArray * tempArray = [[NSMutableArray alloc] initWithCapacity:30];
        for (int i; i < 25; i++) {
            
            Emogo_MessageClass * test_message = [[Emogo_MessageClass alloc] initWithType:0];
            [tempArray addObject:test_message];
            
        }
        [test_collection setEmogo_Collection:tempArray];
        
        NSLog(@"Collection: %@",test_collection.collection_description);
    }
    return 0;
}
