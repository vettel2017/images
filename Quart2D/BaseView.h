//
//  BaseView.h
//  Quart2D
//
//  Created by Luuuo on 2018/2/9.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kNavgationHeight 44
#define kStatusBarHeight CGRectGetHeight([UIApplication sharedApplication].statusBarFrame)
#define kViewHeight kScreenHeight - kNavgationHeight - kStatusBarHeight

@interface BaseView : UIView
/** <#注释#> */
@property (nonatomic, strong) NSMutableDictionary *attribute;

@end
