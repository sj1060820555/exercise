//
//  UIButton+noClick.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/30.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "UIButton+noClick.h"

@implementation UIButton (noClick)

-(void)unableClick{
[NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(invalidateTimer:) userInfo:nil repeats:NO];
}
-(void)invalidateTimer:(NSTimer *)timer{
    self.backgroundColor=[UIColor darkTextColor];
    self.userInteractionEnabled=NO;
    [timer invalidate];

}




@end
