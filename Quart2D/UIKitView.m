//
//  UIKitView.m
//  Quart2D
//
//  Created by Luuuo on 2018/2/9.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import "UIKitView.h"

@implementation UIKitView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath *ellipsePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((kScreenWidth - 100.0) * 0.5, 100.0, 100.0, 100.0)];
    ellipsePath.lineWidth = 5;
    [[UIColor blueColor] setFill];
    [ellipsePath fill];
    
    NSString *ellipse = @"Ellipse";
    [ellipse drawInRect:CGRectMake((kScreenWidth - 100) * 0.5, 200.0 + 20, 100.0, 20.0) withAttributes:self.attribute];
    
    UIBezierPath *strokePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((kScreenWidth - 100.0) * 0.5, 250.0, 100.0, 100.0)];
    strokePath.lineWidth = 5;
    [[UIColor redColor] setStroke];
    [strokePath stroke];
    
    NSString *stroke = @"Stroke";
    [stroke drawInRect:CGRectMake((kScreenWidth - 100) * 0.5, 350.0 + 20, 100.0, 20.0) withAttributes:self.attribute];
    
}


@end
