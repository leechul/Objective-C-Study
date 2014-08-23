//
//  CaculatorBrain.m
//  Calculaotr
//
//  Created by Chul Lee on 8/23/14.
//  Copyright (c) 2014 leechul. All rights reserved.
//

#import "CaculatorBrain.h"

@interface CaculatorBrain()
@property (nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation CaculatorBrain

@synthesize operandStack = _operandStack;

- (NSMutableArray *)operandStack
{
    if (_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}

- (void)pushOperand:(double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double)popOperand
{
    NSString *operandObject = [self.operandStack lastObject];
    if (operandObject != nil) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}
- (double)performOperation:(NSString *)operation
{
    double result = 0;
    // calculate result
    
    if ([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    } else if ([@"*" isEqualToString:operation]) {
        result = [self popOperand] * [self popOperand];
    }
    
    [self pushOperand:result];
    return result;
}
@end
