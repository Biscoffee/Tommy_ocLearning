//
//  SceneDelegate.m
//  导航控制器
//
//  Created by 吴桐 on 2025/6/2.
//

#import "SceneDelegate.h"
#import "VCRoot.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
//    // ✅ 1. 强制类型转换
//    UIWindowScene *windowScene = (UIWindowScene *)scene;
//
//    // ✅ 2. 创建 window 对象，并绑定 scene
//    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
//    self.window.frame = [UIScreen mainScreen].bounds;
//
//    // ✅ 3. 创建根视图控制器
//    VCRoot *root = [[VCRoot alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:root];
//
//    // ✅ 4. 设置根视图控制器
//    self.window.rootViewController = nav;
//
//    // ✅ 5. 显示 window
//    [self.window makeKeyAndVisible];
    self.window.frame = [UIScreen mainScreen].bounds;
       
       //在这里创建了一个根视图控制器，直接将这个根视图控制器赋值给了导航控制器的根视图对象，然后这个导航控制器又作为了window的根视图控制器
       self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController: [[VCRoot alloc] init]];
       
       [self.window makeKeyAndVisible];

}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
