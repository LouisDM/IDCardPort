//
//  ViewController.h
//  IDCardPort
//
//  Created by 辜东明 on 2016/9/29.
//  Copyright © 2016年 辜东明. All rights reserved.
//

#import <UIKit/UIKit.h>
@class IdInfo;
@interface LSIdCardCodeViewController : UIViewController

@property(nonatomic,copy)void (^idCardCodeCancelBlock)(LSIdCardCodeViewController *);//扫描取消
@property(nonatomic,copy)void (^idCardCodeSuccessBlock)(LSIdCardCodeViewController *,IdInfo *);//扫描完成
@property(nonatomic,copy)void (^idCardCodeAgainBlock)(LSIdCardCodeViewController *);//扫描重置

@end

