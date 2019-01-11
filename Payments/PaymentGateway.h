//
//  PaymentGateway.h
//  Payments
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PaymentGateway : NSObject
-(void)processPaymentAmount:(NSInteger*)amt;
@end

NS_ASSUME_NONNULL_END
