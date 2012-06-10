//
//  AppDelegate.m
//  StoryboardUITableView
//
//  Created by Kurry Tran on 10/25/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "Album.h"
#import "AlbumViewController.h"
@implementation AppDelegate{
    NSMutableArray *albums;
}


@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    albums = [NSMutableArray arrayWithCapacity:5];
    Album *album1 = [[Album alloc] init];
    Album *album2 = [[Album alloc] init];
    Album *album3 = [[Album alloc] init];
    Album *album4 = [[Album alloc] init];
    Album *album5 = [[Album alloc] init];

    album1.albumName = @"Graduation";
    album2.albumName = @"Dark and Twisted Fantasy";
    album3.albumName = @"Torches";
    album4.albumName = @"Nothing But The Beat";
    album5.albumName = @"Angles";

    album1.artist = @"Kanye West";
    album2.artist = @"Kanye West";
    album3.artist = @"Foster The People";
    album4.artist = @"David Guetta";
    album5.artist = @"The Strokes";

    album1.rating = 5;
    album2.rating = 5;
    album3.rating = 5;
    album4.rating = 5;
    album5.rating = 5;

    [albums addObject:album1];
    [albums addObject:album2];
    [albums addObject:album3];
    [albums addObject:album4];
    [albums addObject:album5];
    
    UITabBarController *tabBarController = 
    (UITabBarController *)self.window.rootViewController;
	
    UINavigationController *navigationController = 
    [[tabBarController viewControllers] objectAtIndex:0];
	
    AlbumViewController *albumsViewController = 
    [[navigationController viewControllers] objectAtIndex:0];
	albumsViewController.albums = albums;

    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
