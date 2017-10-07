//
//  PaypalPaymentService.h
//  Payments App
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>

@property (nonatomic) NSInteger paymentAmount;
-(void) processPaymentAmount: (NSInteger) amount;
-(BOOL) canProcessPayment;

@end
