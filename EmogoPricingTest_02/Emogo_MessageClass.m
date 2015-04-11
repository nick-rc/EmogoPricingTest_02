//
//  Emogo_MessageClass.m
//  EmogoPricingTest_02
//
//  Created by Nick Craig on 4/3/15.
//  Copyright (c) 2015 Nick Craig. All rights reserved.
//

#import "Emogo_MessageClass.h"

@implementation Emogo_MessageClass


@synthesize Emogo_Message_Value, Price_Per_Sent, Message_Interaction_Potential, Emogo_Type;

-(float)revenueValue{
    float finalVal;
    
    finalVal = self.Emogo_Message_Value - self.Price_Per_Sent;
    
    return finalVal;
}

// Initiates an Emogo Message based on a preset type value assigned in main.m
-(id)initWithType:(int) typeValue{
    self = [super init];
    switch (typeValue) {
        case 0:
            NSLog(@"Coupon");
            [self setEmogo_Message_Value:10];
            [self setMessage_Interaction_Potential:.64];
            [self setEmogo_Type:typeValue];
            [self setPrice_Per_Sent:1.5];
            
            break;
        
        case 1:
            NSLog(@"Homepage");
            [self setEmogo_Message_Value:5];
            [self setMessage_Interaction_Potential:.55];
            [self setEmogo_Type:typeValue];
            [self setPrice_Per_Sent:.13];
            
            break;
            
        case 2:
            NSLog(@"User Data");
            [self setEmogo_Message_Value:12];
            [self setMessage_Interaction_Potential:.87];
            [self setEmogo_Type:typeValue];
            [self setPrice_Per_Sent:1.2];
            
            break;
            
        case 3:
            NSLog(@"Purchase");
            [self setEmogo_Message_Value:19];
            [self setMessage_Interaction_Potential:.71];
            [self setEmogo_Type:typeValue];
            [self setPrice_Per_Sent:2.8];
            
            break;
            
        default:
            break;
    }
    
    return self;
}


@end
