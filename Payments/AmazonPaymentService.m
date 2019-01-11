//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "AmazonPaymentService.h"



@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger )payment { 
    NSLog(@"payed with amazon: $%li",payment);
}

- (BOOL)canProcessPayment { 
    return (arc4random_uniform(2) >= 1);
}


@end
