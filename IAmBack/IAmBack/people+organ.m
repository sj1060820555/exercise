//
//  people+organ.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/29.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "people+organ.h"
#import <objc/runtime.h>

static const char * RY_CLICKKEY = "ry_clickkey";
static  const char *hand_key="hand_key";

@implementation people (organ)

-(void)setHand:(NSString*)hand{
    objc_setAssociatedObject(self, hand_key, hand, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSString *)getHand:(NSString *)hand{
    return objc_getAssociatedObject(self, hand_key);
}


- (void)setRy_time:(NSString*)ry_time{
    objc_setAssociatedObject(self, RY_CLICKKEY, ry_time, OBJC_ASSOCIATION_ASSIGN);
    
}
- (NSString *)ry_time{
    return objc_getAssociatedObject(self, RY_CLICKKEY) ;
    
}




@end
