//
//  AppDelegate.m
//  环信聊天Demo
//
//  Created by 袁斌 on 16/4/15.
//  Copyright © 2016年 __defaultyuan. All rights reserved.
//

#import "AppDelegate.h"
#import "Config.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self _registerEMSDK];
    
    EMError *rerror = [[EMClient sharedClient] registerWithUsername:UserID password:PassWord];
    if (rerror == nil) {
        NSLog(@"注册成功");
    }
    
    EMError *loginError = [[EMClient sharedClient] loginWithUsername:UserID password:PassWord];
    if (!loginError) {
        NSLog(@"登录成功");
    }
    
    
    return YES;
}
- (void)_registerEMSDK
{
    //AppKey:注册的appKey，详细见下面注释。
    //apnsCertName:推送证书名(不需要加后缀)，详细见下面注释。
    EMOptions *options = [EMOptions optionsWithAppkey:HuanXinAppKey];
    options.apnsCertName = HuanXinApnsCertName;
    [[EMClient sharedClient] initializeSDKWithOptions:options];

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

    [[EMClient sharedClient] applicationDidEnterBackground:application];

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
   
    [[EMClient sharedClient] applicationWillEnterForeground:application];

}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
