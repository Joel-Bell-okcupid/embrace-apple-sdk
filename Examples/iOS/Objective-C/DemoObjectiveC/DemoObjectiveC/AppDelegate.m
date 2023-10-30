//
//  AppDelegate.m
//  DemoObjectiveC
//
//  Created by Jonathon Copeland on 10/19/23.
//
@import EmbraceIO;

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    EmbraceOptions *Options = [[EmbraceOptions alloc]initWithAppId:@"VZSfE" appGroupId:nil platform:EmbracePlatformIOS];
    NSArray<id<Collector>>* Collectors = @[[AppInfoCollector new], [DeviceInfoCollector new]];
    [Embrace setupWithOptions:Options collectors:Collectors];
    [[Embrace client]start];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
