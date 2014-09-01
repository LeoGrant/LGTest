//
//  LGTestModel.m
//  Test
//
//  Created by Leo on 14-7-22.
//  Copyright (c) 2014年 Leo. All rights reserved.
//

#import "LGTestModel.h"
#import "UIView+Extension.h"

@import AVFoundation;


@implementation ClassA
@synthesize title;
@synthesize name;
@synthesize number;

@end


@implementation ClassB
@synthesize age = _tempA;
- (instancetype)init
{
    self = [super init];
    if (self) {
        _tempA = 100;
    }
    return self;
}
@end

void (*setter)(id,SEL,BOOL);
@implementation LGTestModel

+(id) staticObj
{
    return self;
}

-(void)testImport
{

    
}



-(void) test_methodOne
{
    ClassB *obj = [ClassB new];
    NSLog(@"value = %d",[obj showAge]);
    [obj setTag:800];
    NSLog(@"value = %d",[obj showAge]);
    obj.age = 1000;
    NSLog(@"value = %d",obj.age);

}
@end
