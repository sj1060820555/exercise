//
//  UITVCell.h
//  IAmBack
//
//  Created by 王少杰 on 17/7/29.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITVCell : UITableViewCell
- (IBAction)tap:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *rowText;

@end
