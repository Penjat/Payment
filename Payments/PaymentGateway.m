//
//  PaymentGateway.m
//  Payments
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void)processPaymentAmount:(NSInteger)amt{
    [self.paymentDelegate processPaymentAmount:amt];
}
@end
