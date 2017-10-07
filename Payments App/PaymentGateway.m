//
//  PaymentGateway.m
//  Payments App
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount: (NSInteger) amount
{
    BOOL canProcess = [self.delegate canProcessPayment];
    
    if (canProcess == YES){
        [self.delegate processPaymentAmount: amount];
    } else {
        NSLog(@"We cannot process your payment");
    };
    
}

@end
