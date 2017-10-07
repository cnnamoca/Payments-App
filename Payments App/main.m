//
//  main.m
//  Payments App
//
//  Created by Carlo Namoca on 2017-10-07.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        int price = arc4random_uniform(1000) + 101;
        
        NSLog (@"Thank you for shopping at Acme.com");
        NSLog (@"Your total today is $%d", price);
        NSLog (@"Please select your payment method:");
        NSLog (@"\n1: Paypal\n2: Stripe\n3: Amazon\n4: Apple Pay");
        
        while (TRUE)
        {
            //do stuff
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSInteger amount = [[inputString stringByReplacingOccurrencesOfString:@" " withString:@""] integerValue];
            
            PaymentGateway *newPayment = [[PaymentGateway alloc]init];
            PaypalPaymentService *paypal = [[PaypalPaymentService alloc]init];
            StripePaymentService *stripe = [[StripePaymentService alloc]init];
            AmazonPaymentService *amazon = [[AmazonPaymentService alloc]init];
            ApplePaymentService *apple = [[ApplePaymentService alloc]init];
            
            switch (amount) {
                case 1:
                    newPayment.delegate = paypal;
                    [newPayment processPaymentAmount:price];
                    break;
                    
                case 2:
                    newPayment.delegate = stripe;
                    [newPayment processPaymentAmount:price];
                    break;
                    
                case 3:
                    newPayment.delegate = amazon;
                    [newPayment processPaymentAmount:price];
                    break;
                    
                case 4:
                    newPayment.delegate = apple;
                    [newPayment processPaymentAmount:price];
                    break;
                    
                default:
                    break;
            }
            
            
            
            
            

            
            
            
            
            
        }
        
        
        
        
    }
    return 0;
}
