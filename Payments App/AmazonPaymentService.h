//
//  AmazonPaymentService.h
//  Payments App
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject <PaymentDelegate>

@property (nonatomic) NSInteger paymentAmount;
-(void) processPaymentAmount: (NSInteger) amazon;
-(BOOL) canProcessPayment;
@end
