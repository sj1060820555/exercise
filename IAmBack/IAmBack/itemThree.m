//
//  itemThree.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/29.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "itemThree.h"
#import "people.h"
#import "people+organ.h"

@interface itemThree (){
    people *_pro;
}

@end

@implementation itemThree

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pro=[[people alloc]init];
    
    [_pro setHand:@"zheshiyishuangdashou"];
    
    [_pro setRy_time:@"hhhhhhhhhh"];


    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"--------ddddd-----%@==\n==%@",[_pro getHand:@"zheshiyishuangdashou"],[_pro ry_time]);
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
