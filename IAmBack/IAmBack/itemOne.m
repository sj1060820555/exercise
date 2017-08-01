//
//  itemOne.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/29.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "itemOne.h"
#import "UIVC.h"

@interface itemOne ()<UINavigationControllerDelegate>

@end

@implementation itemOne


//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
//}
//
//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//    
//    [self.navigationController setNavigationBarHidden:NO animated:YES];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.delegate=self;
    
    UILabel *la=[[UILabel alloc]initWithFrame:CGRectMake(10, 100, 30, 30)];
    la.backgroundColor=[UIColor blueColor];
    [self.view addSubview:la];
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeSystem];
    btn.backgroundColor=[UIColor blueColor];
    btn.frame=CGRectMake(100, 150, 100, 40);
    [btn addTarget:self action:@selector(goVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3];
    [UIView setAnimationRepeatCount:3];
    btn.frame=CGRectMake(100, 50, 200, 300);
    [UIView commitAnimations];
    
    
    // Do any additional setup after loading the view.
}

-(void)goVC{
    UIVC *vc=[[UIVC alloc]initWithNibName:NSStringFromClass([UIVC class]) bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark 
-(void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
     BOOL isShowHomePage = [viewController isKindOfClass:[self class]];
    [self.navigationController setNavigationBarHidden:isShowHomePage animated:YES];
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
