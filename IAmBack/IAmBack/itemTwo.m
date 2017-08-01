//
//  itemTwo.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/29.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "itemTwo.h"
#import "UIVC.h"
#import <WebKit/WebKit.h>

@interface itemTwo ()


@end

@implementation itemTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    WKWebView *web=[WKWebView alloc]
    
    
    
    
//    UIBarStyleDefault          = 0,
//    UIBarStyleBlack            = 1,
//    
//    UIBarStyleBlackOpaque      = 1, // Deprecated. Use UIBarStyleBlack
//    UIBarStyleBlackTranslucent = 2, // Deprecated. Use UIBarStyleBlack and set the translucent property to YES

    
//     self.navigationController.navigationBar.translucent = NO;
//    self.navigationController.navigationBar.barStyle=UIBarStyleBlackOpaque;
//    self.navigationController.navigationBar.barStyle=UIBarStyleBlack;
//    self.navigationController.navigationBar.barStyle=UIBarStyleBlackTranslucent;
//
//    [self.uiBtn addTarget:self action:@selector(goUIvc) forControlEvents:UIControlEventTouchUpInside];
//   
//    
//    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 10, 100, 100)];
//    view.backgroundColor=[UIColor yellowColor];
//    [self.view addSubview:view];
    
    CGSize size = self.view.frame.size;
    // 创建一个工具条，并设置它的大小和位置
    UIToolbar* toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 100, size.width, 46)];
    // 设置工具条的style
    [toolbar setBarStyle:UIBarStyleDefault];
    
    // 创建使用文本标题的UIBarButtonItem
    UIBarButtonItem* leftItem = [[UIBarButtonItem alloc] initWithTitle:@"左边" style:UIBarButtonItemStylePlain target:self action:@selector(onClick:)];
    [leftItem setTag:1];
    
    // 创建使用自定义图片的UIBarButtonItem
    UIBarButtonItem* centerItem = [[UIBarButtonItem alloc]
                                   initWithImage:[UIImage imageNamed:@"home_tab_home_gray"]
                                   style:UIBarButtonItemStylePlain
                                   target:self
                                   action:@selector(onClick:)];
    [centerItem setTag:2];
    // 创建使用系统图标的UIBarButtonItem
    UIBarButtonItem* rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(onClick:)];
    [rightItem setTag:3];
    // 为工具条设置工具按钮
    NSArray* barButtonItems = [NSArray arrayWithObjects:leftItem,centerItem,rightItem, nil];
    
//    [toolbar setItems:barButtonItems animated:YES];
    // 将工具条添加到当前应用的界面中
//    [self.view addSubview:toolbar];
    self.navigationController.toolbarHidden=NO;
//    self.navigationController.navigationBar.
    [self.navigationController.toolbar setItems:barButtonItems animated:YES];
    
}

- (void)onClick:(id) sender {
    NSString* title = @"";
    switch ([sender tag]) {
        case 1:
            title = @"文字";
            break;
        case 2:
            title = @"自定义图片";
            break;
        case 3:
            title = @"系统图标";
            break;
        default:
            break;
    }
    
    // 使用UIAlertView显示用户点击了哪个按钮
    NSString* msg = [NSString stringWithFormat:@"您点击了【%@】按钮"
                     , title];
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                    message:msg
                                                   delegate:nil
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles: nil];
    [alert show];
    
}
-(void)goUIvc{
    
//    self.navigationController.navigationBar 
   
//    [self.navigationController pushViewController:[[UIVC alloc]initWithNibName:NSStringFromClass([UIVC class]) bundle:nil] animated:YES];
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
