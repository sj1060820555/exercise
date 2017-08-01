//
//  ViewController.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/30.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITabBar *tabBar = self.tabBar;
    UITabBarItem *item0 = [tabBar.items objectAtIndex:0];
    UITabBarItem *item1 = [tabBar.items objectAtIndex:1];
    UITabBarItem *item2 = [tabBar.items objectAtIndex:2];
    UITabBarItem *item3 = [tabBar.items objectAtIndex:3];
    // 对item设置相应地图片
    item0.selectedImage = [[UIImage imageNamed:@"home_tab_home_gray"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    item0.image = [[UIImage imageNamed:@"home_tab_home_blue"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item1.selectedImage = [[UIImage imageNamed:@"home_tab_home_gray"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    item1.image = [[UIImage imageNamed:@"home_tab_home_blue"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item2.selectedImage = [[UIImage imageNamed:@"home_tab_home_gray"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    item2.image = [[UIImage imageNamed:@"home_tab_home_blue"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item3.selectedImage = [[UIImage imageNamed:@"home_tab_home_gray"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    item3.image = [[UIImage imageNamed:@"home_tab_home_blue"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
