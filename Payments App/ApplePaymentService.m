//
//  ApplePaymentService.m
//  Payments App
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void) processPaymentAmount: (NSInteger) amount
{
    _paymentAmount = amount;
    NSLog(@"Paying with ApplePay: $%ld", (long)amount);
}

-(BOOL) canProcessPayment
{
    int x = arc4random_uniform(2);
    if ( x == 0){
        return NO;
    }else {
        return YES;
    }
}

@end
