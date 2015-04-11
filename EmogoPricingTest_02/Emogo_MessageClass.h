//
//  Emogo_MessageClass.h
//  EmogoPricingTest_02
//
//  Created by Nick Craig on 4/3/15.
//  Copyright (c) 2015 Nick Craig. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Emogo_MessageClass : NSObject{
    // External Variables
    float  Emogo_Message_Value; // Determines the Value of the contents it links to.
    float  Price_Per_Sent; // The cost to the business per Emogo sent.
    float  Message_Interaction_Potential; // The likelyhood of interaction with the Emogo.
    float  Emogo_Type;
}

@property (nonatomic) float Emogo_Message_Value;
@property (nonatomic) float Price_Per_Sent;
@property (nonatomic) float Message_Interaction_Potential;
@property (nonatomic) float Emogo_Type;


// Functions that can be performed on an Emogo_Message

-(float)revenueValue;
-(id)initWithType:(int) typeValue;

@end
