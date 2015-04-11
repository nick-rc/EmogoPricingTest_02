//
//  Emogo_CollectionClass.m
//  EmogoPricingTest_02
//
//  Created by Nick Craig on 4/3/15.
//  Copyright (c) 2015 Nick Craig. All rights reserved.
//

#import "Emogo_CollectionClass.h"
#import "Emogo_MessageClass.h"

@implementation Emogo_CollectionClass

-(NSString *)collection_description{
    
    return @"";
    
}

-(NSString *)value_description{
    
    NSString * temp_string = @"";
    
    return temp_string;
    
}



-(void)setEmogo_Collection:(NSMutableArray *)emogoArray{
    // Sets the array of Emogos to the collection
    Collection_Array = [NSMutableArray arrayWithArray:emogoArray];
}


-(void)add_Demographic:(NSInteger)dem_type{
    
}


-(void)add_Emogo_Type:(int)emg_type{
    
    
}


@end
