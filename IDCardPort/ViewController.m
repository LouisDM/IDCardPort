//
//  ViewController.m
//  IDCardPort
//
//  Created by 辜东明 on 2016/9/29.
//  Copyright © 2016年 辜东明. All rights reserved.
//

#import "ViewController.h"
#import "LSIdCardCodeViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *b1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [b1 setTitle:@"身份证扫描" forState:UIControlStateNormal];
    [b1 setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:b1];
    [b1 addTarget:self action:@selector(sao) forControlEvents:UIControlEventTouchUpInside];
}

- (void)sao{
    LSIdCardCodeViewController *ls = [LSIdCardCodeViewController new];
    [self presentViewController:ls animated:YES completion:nil];
    ls.idCardCodeSuccessBlock = ^(LSIdCardCodeViewController *ls ,IdInfo *info){
        NSLog(@"%@",info);
    };
    ls.idCardCodeCancelBlock = ^(LSIdCardCodeViewController *ls){
        NSLog(@"取消");
        [ls dismissViewControllerAnimated:YES completion:nil];
    };
    ls.idCardCodeAgainBlock = ^(LSIdCardCodeViewController *ls){
        NSLog(@"重新取样");
    };
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
