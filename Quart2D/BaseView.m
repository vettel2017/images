//
//  BaseView.m
//  Quart2D
//
//  Created by Luuuo on 2018/2/9.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor whiteColor];
        
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        [style setAlignment:NSTextAlignmentCenter];
        
        UIFont *font = [UIFont boldSystemFontOfSize:12.0];
        
        self.attribute = [@{NSParagraphStyleAttributeName:style,NSFontAttributeName:font,NSForegroundColorAttributeName:[UIColor blackColor]} mutableCopy];
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
