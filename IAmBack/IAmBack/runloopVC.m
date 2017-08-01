//
//  runloopVC.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/29.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "runloopVC.h"

@interface runloopVC ()
{
    NSTimer   *_timer2;
}

@end

@implementation runloopVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scro=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 100, 300, 50)];
    scro.contentSize=CGSizeMake(3000, 50);
    scro.backgroundColor=[UIColor brownColor];
    [self.view addSubview:scro];
    
    
    NSTimer  *timer=[NSTimer timerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"\n=====iiiiiii====\n");
    }];
    
    [timer setFireDate:[NSDate date]];
    
    
    _timer2=[NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"\n=====222222====\n");
    }];
    [[NSRunLoop currentRunLoop]addTimer:_timer2 forMode:NSRunLoopCommonModes];
    
    // [timer2 setFireDate:[NSDate date]];
    
    
}

-(void)viewDidDisappear:(BOOL)animated{
        [_timer2 invalidate];
}

-(void)viewDidAppear:(BOOL)animated{

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
