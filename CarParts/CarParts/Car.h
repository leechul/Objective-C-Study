//
//  Car.h
//  CarParts
//
//  Created by Chul Lee on 2014. 8. 15..
//  Copyright (c) 2014년 ipageon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Engine;
@class Tire;

@interface Car : NSObject
{
    Engine  *engine;
    Tire    *tires[4];
}

- (void)    print;
- (void)    setEngine: (id) engine;
- (void)    setTire: (id) tire atIndex: (int) idx;
- (Engine *) engine;
@end
