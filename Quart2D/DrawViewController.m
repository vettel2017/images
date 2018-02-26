//
//  DrawViewController.m
//  Quart2D
//
//  Created by Luuuo on 2018/2/9.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import "DrawViewController.h"
#import "BaseView.h"

@interface DrawViewController ()
// UI
/** <#注释#> */
@property (nonatomic, strong) UIScrollView *scrollView;
/** <#注释#> */
@property (nonatomic, strong) BaseView *baseView;

// DATA

@end

@implementation DrawViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = _model.name;
    
    [self settingSubViews];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private methods

-(void)settingSubViews{
    
    _baseView = [[NSClassFromString(_model.viewName) alloc] initWithFrame:CGRectMake(0, 0, _model.width, kViewHeight)];
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, kNavgationHeight + kStatusBarHeight, kScreenWidth, kViewHeight)];
    _scrollView.contentSize = _baseView.bounds.size;
    
    [_scrollView addSubview:_baseView];
    [self.view addSubview:_scrollView];
}


#pragma mark - Delegate
#pragma mark - event response
#pragma mark - lazy loading

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
