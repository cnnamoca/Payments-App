//
//  PaymentGateway.h
//  Payments App
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void) processPaymentAmount: (NSInteger) amount;
-(BOOL) canProcessPayment;


@end

@interface PaymentGateway : NSObject

@property (nonatomic) NSInteger paymentAmount;
@property (weak, nonatomic) id<PaymentDelegate> delegate;

-(void) processPaymentAmount: (NSInteger) amount;



@end
