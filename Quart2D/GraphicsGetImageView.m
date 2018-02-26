//
//  GraphicsGetImageView.m
//  Quart2D
//
//  Created by Hanson on 2018/2/11.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import "GraphicsGetImageView.h"

@implementation GraphicsGetImageView

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), NO, [UIScreen mainScreen].scale);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextAddEllipseInRect(context, CGRectMake(0,0,100,100));
        CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
        CGContextFillPath(context);
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake((kScreenWidth - 100) * 0.5, 100, 100, 100);
        [self addSubview:imageView];
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
