//
//  Emogo_CollectionClass.h
//  EmogoPricingTest_02
//
//  Created by Nick Craig on 4/3/15.
//  Copyright (c) 2015 Nick Craig. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Emogo_MessageClass.h"

@interface Emogo_CollectionClass : Emogo_MessageClass{
    
    
    // Array of Emogo Messages
    NSMutableArray * Collection_Array;
    NSMutableArray * Demographics_Array;
    NSMutableArray * Emogo_Types_Array;
    
    // New Emogo to be added to Collection
    Emogo_MessageClass * app_Emogo_Message;
    Emogo_CollectionClass * temp_Collection;
    
}



-(NSString *)collection_description;
-(NSString *)value_description;

-(void)setEmogo_Collection:(NSMutableArray *)emogoArray;
-(void)add_Demographic:(NSInteger)dem_type;
-(void)add_Emogo_Type:(int)emg_type;



@end





//
//
