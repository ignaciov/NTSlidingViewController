//
//  AppDelegate.m
//  NTSlidingViewController
//
//  Created by nonstriater on 14-2-24.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import "AppDelegate.h"
#import "NTSlidingViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UIViewController *vc1 = [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil] instantiateInitialViewController];
    vc1.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *vc2 = [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil] instantiateViewControllerWithIdentifier:@"vc2"];
    vc2.view.backgroundColor = [UIColor yellowColor];
    
    UIViewController *vc3 = [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil] instantiateViewControllerWithIdentifier:@"vc3"];
    vc3.view.backgroundColor = [UIColor blueColor];
    
    UIViewController *vc4 = [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil] instantiateViewControllerWithIdentifier:@"vc4"];
    vc4.view.backgroundColor = [UIColor orangeColor];
    
    UIViewController *vc5 = [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil] instantiateViewControllerWithIdentifier:@"vc5"];
    vc5.view.backgroundColor = [UIColor redColor];
    
    NTSlidingViewController *sliding = [NTSlidingViewController slidingViewControllerWithTitlesAndControllers:@{
                                                                             
                                                                             @"VC 1":[[UINavigationController alloc] initWithRootViewController:vc1],
                                                                             @"VC 2":vc2,
                                                                             @"VC 3":vc3,
                                                                             @"VC 4":vc4,
                                                                             @"VC 5":vc5
                                                                             
                                                                             }];
    
//    NTSlidingViewController *sliding = [[NTSlidingViewController alloc] initSlidingViewControllerWithTitle:@"推荐" viewController:vc1];
//    [sliding addControllerWithTitle:@"精选集" viewController:vc2];
//    [sliding addControllerWithTitle:@"排行榜" viewController:vc3];
//    [sliding addControllerWithTitle:@"专辑" viewController:vc4];
//    [sliding addControllerWithTitle:@"艺人" viewController:vc5];
    sliding.selectedLabelColor = [UIColor redColor];
    sliding.unselectedLabelColor = [UIColor brownColor];
    
    self.window.rootViewController = sliding;
    
    return YES;
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
