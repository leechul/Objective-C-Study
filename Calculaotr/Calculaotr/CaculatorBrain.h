//
//  CaculatorBrain.h
//  Calculaotr
//
//  Created by Chul Lee on 8/23/14.
//  Copyright (c) 2014 leechul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorBrain : NSObject

- (void)pushOperand:(double)operand;
- (double)performOperation:(NSString *)operation;

@end
