//
//  LGTestModel.h
//  Test
//
//  Created by Leo on 14-7-22.
//  Copyright (c) 2014年 Leo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject

@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *name;
@property (nonatomic) NSNumber        *number;

@end

@interface ClassB : NSObject
@property (nonatomic,getter = showAge,setter = setTag:) int age;
@end

@interface LGTestModel : NSObject

-(void) testImport;

+(id) staticObj;

@end
