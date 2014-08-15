#import <Foundation/Foundation.h>

//Tire
@interface Tire : NSObject
@end// Tire


@implementation Tire

- (NSString *) description
{
    return (@"I am a tire. I last a while");
}// description

@end// Tire


//Engine
@interface Engine : NSObject

@end

@implementation Engine


- (NSString *) description
{
    return (@"I am an Engine. Vrooom!");
}


@end

@interface EngineLee : Engine

@end
@implementation EngineLee

- (NSString *) description
{
    return (@"I am an EngineLee. Amazing");
}

@end


//Car

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
