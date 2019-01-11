//
//  main.m
//  Payments
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int toPay = arc4random_uniform(900)+100;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon");
        
        char answerInput[50];
        fgets(answerInput,50,stdin);
        
        NSString * userInput = [NSString stringWithCString:answerInput encoding:NSUTF8StringEncoding];
        int userSelection = [userInput integerValue];
        
        NSLog(@"the user selected: %i",userSelection);
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        PaypalPaymentService *paypal;
        StripePaymentService *stripe;
        AmazonPaymentService *amazon;
        
        switch(userSelection){
                
            //paypal
            case 1:
                paypal = [[PaypalPaymentService alloc] init];
                paymentGateway.paymentDelegate = paypal;
                break;
            //Stripe
            case 2:
                stripe = [[StripePaymentService alloc] init];
                paymentGateway.paymentDelegate = stripe;
                break;
            //Amazon
            case 3:
                amazon = [[AmazonPaymentService alloc] init];
                paymentGateway.paymentDelegate = amazon;
                break;


        }
        
        
        
        [paymentGateway processPaymentAmount:toPay];
        
    }
    return 0;
}
