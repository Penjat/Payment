//
//  ApplePay.m
//  Payments
//
//  Created by Spencer Symington on 2019-01-11.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "ApplePay.h"

@implementation ApplePay

- (BOOL)canProcessPayment {
    //apple pay never works
    return NO;
}

- (void)processPaymentAmount:(NSInteger)payment {
     NSLog(@"payed with apple pay: $%li",payment);
}

@end
