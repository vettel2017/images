//
//  DrawDelegateView.m
//  Quart2D
//
//  Created by Luuuo on 2018/2/10.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import "DrawDelegateView.h"

@interface DrawDelegateView (){
    
    LayerDelegate *layerDelegate;
}

@end

@implementation DrawDelegateView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        CALayer *layer = [CALayer layer];
        layer.frame = frame;
        layerDelegate = [[LayerDelegate alloc] init];
        [layer setDelegate:layerDelegate];
        
        [self.layer addSublayer:layer];
        [layer setNeedsDisplay];
    }
    return self;
}

@end

@implementation LayerDelegate

-(void)drawLayer:(CALayer *)layer inContext:(nonnull CGContextRef)ctx{
    
    UIGraphicsPushContext(ctx);
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((kScreenWidth - 100) * 0.5, 100.0, 100.0, 100.0)];
    [[UIColor blueColor] setFill];
    [path fill];
    UIGraphicsPopContext();
}

@end
