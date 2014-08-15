#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"
#import "Car.h"

@interface EngineLee : Engine

@end
@implementation EngineLee

- (NSString *) description
{
    return (@"I am an EngineLee. Amazing");
}

@end


int main ( int argc, const char * argv[])
{
    Car *car;
    
    car = [Car new];
   
    Engine *engine = [Engine new];
    [car setEngine:engine];
    for ( int i=0; i <4; i++)
    {
    [car setTire:[Tire new] atIndex:i];
    }
    [car print];
    
    Car *newcar;
    newcar = [Car new];
    Engine *newengine = [EngineLee new];
    [newcar setEngine:newengine];
    [newcar print];
    return (0);
}
