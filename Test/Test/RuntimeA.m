//
//  RuntimeA.m
//  Test
//
//  Created by Leo on 14-7-31.
//  Copyright (c) 2014年 Leo. All rights reserved.
//

#import "RuntimeA.h"

static int i = 0;
@import ObjectiveC;
void dispalyA(id self,SEL _cmd)
{
    printf("displayA call\n");
}

@implementation RuntimeA
+(BOOL)resolveInstanceMethod:(SEL)sel
{
    if(sel == NSSelectorFromString(@"taskDoneA"))
    {
        if(i==0)
        {
            class_addMethod([self class], sel, (IMP) dispalyA, "v@:");
            i ++;
        }
        return YES;
    }
    
    return [super resolveClassMethod:sel];
}

@end
