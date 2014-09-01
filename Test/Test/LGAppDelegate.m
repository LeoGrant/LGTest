//
//  LGAppDelegate.m
//  Test
//
//  Created by Leo on 14-7-20.
//  Copyright (c) 2014年 Leo. All rights reserved.
//

#import "LGAppDelegate.h"
#import <ASIHTTPRequest/ASIHTTPRequest.h>

#import "LGTestModel.h"
#include <objc/objc.h>


@interface ClassApp : NSObject
@property (nonatomic,strong) NSString *name;
@end

@implementation ClassApp
@synthesize name;
@end


@implementation LGAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    

    topWindow = [[UIWindow alloc] initWithFrame:CGRectMake(50, 50, 50, 60)];
    topWindow.backgroundColor = [UIColor blueColor];
    topWindow.windowLevel = UIWindowLevelAlert;
//    topWindow.hidden = NO;
//    [topWindow makeKeyAndVisible];
    // Override point for customization after application launch.
    return YES;
    
}

-(void) print
{
    NSArray *array = @[@"1",@"2",@"3"];
    NSLog(@"%@",array[0]);
    NSLog(@"1111");
    
    
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
