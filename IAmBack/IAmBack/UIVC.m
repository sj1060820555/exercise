//
//  UIVC.m
//  IAmBack
//
//  Created by 王少杰 on 17/7/29.
//  Copyright © 2017年 wangshaojie. All rights reserved.
//

#import "UIVC.h"
#import "UITVCell.h"
#import "UIVC2.h"

@interface UIVC ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_table;
    NSMutableArray *_dataArray;
}
@property (weak, nonatomic) IBOutlet UILabel *topLabel;

@property (weak, nonatomic) IBOutlet UILabel *twoLabel;
@property (weak, nonatomic) IBOutlet UILabel *oneLabel;

@end

@implementation UIVC


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.hidesBottomBarWhenPushed=YES;
    }
    return self;  
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *v=[[UIView alloc]initWithFrame:CGRectMake(100, 50, 100, 120)];
    v.backgroundColor=[UIColor blueColor];
    [self.view addSubview:v];
    
    self.topLabel.textColor=[UIColor redColor];

    
    self.view.backgroundColor=[UIColor whiteColor];
    _dataArray=[[NSMutableArray alloc]init];
    for (int i=0; i<20; i++) {
        [_dataArray addObject:[NSString stringWithFormat:@"这是第－－%d行",i+1]];
    }
    
    CGRect f=self.view.frame;
//    self.automaticallyAdjustsScrollViewInsets=NO;
    _table=[[UITableView alloc]initWithFrame:CGRectMake(0, 80, 300, 500) style:UITableViewStylePlain];
    _table.backgroundColor=[UIColor   greenColor];
    _table.delegate=self;
    _table.dataSource=self;
    [_table registerNib:[UINib nibWithNibName:NSStringFromClass([UITVCell class]) bundle:nil] forCellReuseIdentifier:@"abcdd"];
    [self.view addSubview:_table];;
    
    // Do any additional setup after loading the view from its nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITVCell *cell=[tableView dequeueReusableCellWithIdentifier:@"abcdd" forIndexPath:indexPath];
    cell.rowText.text=_dataArray[indexPath.row];
    return cell;
}




-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
 
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIVC2 *vc2=[[UIVC2 alloc]initWithNibName:NSStringFromClass([UIVC2 class]) bundle:nil];
    [self.navigationController pushViewController:vc2 animated:YES];
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
