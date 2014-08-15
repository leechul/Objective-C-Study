//
//  Car.m
//  CarParts
//
//  Created by Chul Lee on 2014. 8. 15..
//  Copyright (c) 2014년 ipageon. All rights reserved.
//

#import "Car.h"

@implementation Car
- (Engine *) engine
{
    return (engine);
}
- (void)    setTire:(id)tire atIndex:(int)idx
{
    tires[idx] = tire;
}

- (void) print
{
    NSLog(@"%@", engine);
    
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
- (void)setEngine: (id)a;
{
    engine = a;
}

@end
