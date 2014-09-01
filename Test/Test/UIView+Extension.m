//
//  UIView+Extension.m
//  Test
//
//  Created by Leo on 14-7-24.
//  Copyright (c) 2014年 Leo. All rights reserved.
//

#import "UIView+Extension.h"
@import ObjectiveC;

//static void *UIViewDataKey = &UIViewDataKey;
static id staticData;

@implementation UIView (Extension)
@dynamic data;
-(id)data
{
    return staticData;
}

-(void)setData:(id)data
{
    staticData = data;
}

@end
