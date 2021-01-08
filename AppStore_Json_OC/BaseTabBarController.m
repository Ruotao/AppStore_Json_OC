//
//  BaseTabBarController.m
//  AppStore_Json_OC
//
//  Created by Eddie on 2021/1/5.
//

#import "BaseTabBarController.h"
#import "SearchViewController.h"

@interface BaseTabBarController ()

@property(strong,nonatomic) UICollectionViewController* searchVC;

@end

@implementation BaseTabBarController
//
//-(void)setSearchVC{
//    UICollectionViewFlowLayout* flowLayout = [[UICollectionViewFlowLayout alloc] init];
//    SearchViewController* searchVC = [[SearchViewController alloc] initWithCollectionViewLayout:flowLayout];
//    searchVC.view.backgroundColor = [UIColor blueColor];
//    self.searchVC = searchVC;
//}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIViewController* appVC = [self setVCTitle:@"APPS"];
//    UIViewController* searchVC = [self setVCTitle:@"Search"];
    UIViewController* todayVC = [self setVCTitle:@"Today"];
    UICollectionViewFlowLayout* flowLayout = [[UICollectionViewFlowLayout alloc] init];
    SearchViewController* searchVC = [[SearchViewController alloc] initWithCollectionViewLayout:flowLayout];
    appVC.view.backgroundColor = [UIColor redColor];
//    searchVC.view.backgroundColor = [UIColor blueColor];
    todayVC.view.backgroundColor = [UIColor greenColor];
    
    UINavigationController* appNavVC = [self setNavVCTabTitle:@"Apps" setVCTitle:@"APPS" withImageName:@"apps" withVC:appVC];
    UINavigationController* searchNavVC = [self setNavVCTabTitle:@"Search" setVCTitle:@"Search" withImageName:@"search" withVC:searchVC];
    UINavigationController* todayNavVC = [self setNavVCTabTitle:@"Today" setVCTitle:@"Today" withImageName:@"today" withVC:todayVC];
//    NSArray* arrVC = [[NSArray alloc]initWithObjects:todayNavVC,appNavVC,searchNavVC, nil];
    [self addChildViewController:todayNavVC];
    [self addChildViewController:appNavVC];
    [self addChildViewController:searchNavVC];
   
    
//    self.viewControllers = arrVC;
                            
                
    
}

-(id)setNavVCTabTitle:(NSString*)title setVCTitle: (NSString*)vctitle withImageName: (NSString*)imgNamge withVC: (UIViewController*)vc{
    UINavigationController* nav1 = [[UINavigationController alloc]initWithRootViewController:vc];
    nav1.tabBarItem.image = [UIImage imageNamed:imgNamge];
    nav1.tabBarItem.title = title;
    nav1.navigationBar.prefersLargeTitles = YES;
    vc.navigationItem.title = vctitle;
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

