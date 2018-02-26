//
//  ViewController.m
//  Quart2D
//
//  Created by Luuuo on 2018/2/9.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import "ViewController.h"
#import "DrawViewController.h"

#import "ListModel.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
// UI
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// DATA
/** <#注释#> */
@property (nonatomic, strong) NSMutableArray<ListModel *> *dataSource;

@end

static NSString * const cellIdentifier = @"cellIdentifier";

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self settingTableView];
    [self settingDataSource];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private methods

-(void)settingDataSource{
    
    _dataSource = [[NSMutableArray alloc] init];
    
    [_dataSource addObject:[ListModel initWithDrawType:kCoreGraphics]];
    [_dataSource addObject:[ListModel initWithDrawType:kUIKitDraw]];
    [_dataSource addObject:[ListModel initWithDrawType:kDrawDelegate]];
    [_dataSource addObject:[ListModel initWithDrawType:kUIKitGraphics]];
    [_dataSource addObject:[ListModel initWithDrawType:kGraphicsGetImage]];
}

-(void)settingTableView{
    
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
}

#pragma mark - Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_dataSource count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [_dataSource objectAtIndex:indexPath.row].name;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *viewControllerName = [_dataSource objectAtIndex:indexPath.row].ViewControllerName;
    DrawViewController *drawViewController = [NSClassFromString(viewControllerName) new];
    drawViewController.model = [_dataSource objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:drawViewController animated:YES];
}


#pragma mark - event response
#pragma mark - lazy loading

@end
