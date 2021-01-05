//
//  BaseTabBarController.m
//  AppStore_Json_OC
//
//  Created by Eddie on 2021/1/5.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIViewController* appVC = [self setVCTitle:@"APPS"];
    UIViewController* searchVC = [self setVCTitle:@"Search"];
    UIViewController* todayVC = [self setVCTitle:@"Today"];
    appVC.view.backgroundColor = [UIColor redColor];
    searchVC.view.backgroundColor = [UIColor blueColor];
    todayVC.view.backgroundColor = [UIColor greenColor];
    
    UINavigationController* appNavVC = [self setNavVCTabTitle:@"Apps" withImageName:@"apps" withVC:appVC];
    UINavigationController* searchNavVC = [self setNavVCTabTitle:@"Search" withImageName:@"search" withVC:searchVC];
    UINavigationController* todayNavVC = [self setNavVCTabTitle:@"Today" withImageName:@"today" withVC:todayVC];
    NSArray* arrVC = [[NSArray alloc]initWithObjects:todayNavVC,appNavVC,searchNavVC, nil];
   
    
    self.viewControllers = arrVC;
                            
                
    
}

-(id)setNavVCTabTitle:(NSString*)title withImageName: (NSString*)imgNamge withVC: (UIViewController*)vc{
    UINavigationController* nav1 = [[UINavigationController alloc]initWithRootViewController:vc];
    nav1.tabBarItem.image = [UIImage imageNamed:imgNamge];
    nav1.tabBarItem.title = title;
    nav1.navigationBar.prefersLargeTitles = YES;
    return nav1;
    
}

-(id)setVCTitle: (NSString*)title{
    UIViewController* vc = [UIViewController new];
    vc.navigationItem.title = title;
    return vc;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

