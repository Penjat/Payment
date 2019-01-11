//
//  PaymentGateway.h
//  Payments
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate
-(void)processPaymentAmount:(NSInteger)payment;
-(BOOL)canProcessPayment;
@end

@interface PaymentGateway : NSObject

-(void)processPaymentAmount:(NSInteger)amt;
@property (weak,nonatomic) id paymentDelegate;

@end

NS_ASSUME_NONNULL_END
