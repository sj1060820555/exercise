//
//  UIVC2.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/29.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "UIVC2.h"


@interface UIVC2 ()
{
    
}
@property(nonatomic,strong)UILabel *label;
@end

@implementation UIVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor=[UIColor yellowColor];
    btn.frame=CGRectMake(100, 200, 150, 50);
    [btn setTitle:@"正常" forState:UIControlStateNormal];
    [btn setTitle:@"不可用" forState:UIControlStateDisabled];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    self.label=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    self.label.backgroundColor=[UIColor greenColor];
    [self.view addSubview:self.label];
//    self.label.text
    [self.label addObserver:self forKeyPath:@"text" options:NSKeyValueObservingOptionNew context:nil];
    
    
    
}
-(void)btnClick:(UIButton *)btn{

    self.label.text=@"ggggg";
    
    
    
    
    NSLog(@"开始");
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"text"]&&[object isEqual:self.label]) {
        self.label.textColor=[UIColor redColor];
    }
}
-(void)dealloc

{
    
    //把注册的监听移除
    
    [self.label removeObserver:self forKeyPath:@"text"];
    
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
