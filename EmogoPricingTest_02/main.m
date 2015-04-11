//
//  main.m
//  EmogoPricingTest_02
//
//  Created by Nick Craig on 4/3/15.
//  Copyright (c) 2015 Nick Craig. All rights reserved.
//  Copyright (c) Emogo Corporation. All rights reserved.

/*
T.O.C.
- main.cpp = Main file running the output end of the program.

CLASSES
- Customer Class
- Has an activity rating that ranges from Inactive, to Interacting, to Emogo Active(Has Emogo App)
- Has a demographic attribute. Can be a number range or set values with dependant accuracy.
** Can have preset types for ease of use
- Emogo Message Class
- Has a 'content-value' value which indicates the potential value of the location of its link.
- Has an interaction-potential value which indicates how likely the content is to attract a customer
- Has a price-per-Emogo-sent value indicating the cost to the business.
*** Can have preset 'types' selected by Businesses
***
- Emogo Campaign Collection Class
   - Has a Types Array of chosen message content types
   - Has a Demographics Array of the main demographics in the campaign
- Customer Campaign Collection Class
   - Has an Inactive Customer Array
   - Has an Interactive Customer Array
   - Has an Emogo Active Customer Array
- Emogo SMS Messaging Campaign Class
   - Has a length of campaign value.
   - Has an SMS burst rate value
   - Has a Total Bursts value
   - Has an Emogo Campaign Collection
   - Has a Customer Campaign Collection
*/

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
