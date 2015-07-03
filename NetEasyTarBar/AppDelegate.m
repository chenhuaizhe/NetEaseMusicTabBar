

#import "AppDelegate.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "BaseTabBarController.h"


@interface AppDelegate ()<UINavigationControllerDelegate>
{
    BaseTabBarController *_rootTab;
      UIImageView *_imageView1;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController1 *firstVC = [[ViewController1 alloc]init];
    ViewController2 *secondVC = [[ViewController2 alloc]init];
    ViewController3 *thirdVC = [[ViewController3 alloc]init];
    ViewController4 *fourthVC = [[ViewController4 alloc]init];
    

    
    _rootTab = [[BaseTabBarController alloc]init];
    
    NSArray *vcArray = @[firstVC,secondVC,thirdVC,fourthVC];
    
    
    _rootTab.viewControllers = vcArray;
    
    //加标题
    firstVC.tabBarItem.title = @"第一个";
    secondVC.tabBarItem .title = @"第二个";
    thirdVC.tabBarItem.title = @"第三个";
    fourthVC.tabBarItem.title = @"第四个";

    self.window.rootViewController = _rootTab;
    
       return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
