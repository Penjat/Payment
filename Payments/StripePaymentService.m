//
//  StripePaymentService.m
//  Payments
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger )payment { 
    NSLog(@"payed with Stripe: $%li",payment);
}

- (BOOL)canProcessPayment { 
    return (arc4random_uniform(2) >= 1);
}


@end
