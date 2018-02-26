//
//  CoreGraphicsView.m
//  Quart2D
//
//  Created by Luuuo on 2018/2/9.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import "CoreGraphicsView.h"

@implementation CoreGraphicsView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [@"可拖拽右滑动，查看更多视图" drawInRect:CGRectMake(0, kScreenHeight - 20 - kNavgationHeight - kStatusBarHeight, kScreenWidth, 20) withAttributes:self.attribute];
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    //直线
    CGContextMoveToPoint(contextRef, 20, 80); // “笔的起始点”
    CGContextAddLineToPoint(contextRef, 100, 80); // “笔的结束点”
    CGContextSetLineWidth(contextRef, 5); // “笔的宽度”
    CGContextSetStrokeColorWithColor(contextRef, [UIColor redColor].CGColor); // “笔的填充模式，以及颜色”
    CGContextStrokePath(contextRef); // “绘制结束”
    
    [@"直线" drawInRect:CGRectMake(20, 80 + 20, 80, 20) withAttributes:self.attribute];
    
    //折线
    CGContextSetLineCap(contextRef, kCGLineCapSquare);//线条样式
    CGContextSetLineWidth(contextRef, 5);//线条粗细宽度
    CGContextSetRGBStrokeColor(contextRef, 0, 1, 0, 1);//设置颜色
    CGContextBeginPath(contextRef);// “笔的起始点”
    CGContextMoveToPoint(contextRef, 20, 170);//起始点设置为(0,0):注意这是上下文对应区域中的相对坐标
    CGContextAddLineToPoint(contextRef, 30, 190);//下一个坐标点
    CGContextAddLineToPoint(contextRef, 40, 160);//下一个坐标点
    CGContextAddLineToPoint(contextRef, 60, 210);//下一个坐标点
    CGContextAddLineToPoint(contextRef, 100, 210);//下一个坐标点
    CGContextStrokePath(contextRef);//连接上面定义的坐标点
    
    [@"折线" drawInRect:CGRectMake(20, 210 + 20, 80, 20) withAttributes:self.attribute];
    
    CGContextAddRect(contextRef, CGRectMake(20, 280, 60, 60));
    CGContextSetStrokeColorWithColor(contextRef, [UIColor brownColor].CGColor);
    CGContextStrokePath(contextRef);
    
    [@"矩形" drawInRect:CGRectMake(20, 340 + 20, 60, 20) withAttributes:self.attribute];
    
    CGContextAddEllipseInRect(contextRef, CGRectMake(200, 60, 100, 100));
    CGContextSetFillColorWithColor(contextRef, [UIColor blueColor].CGColor);
    CGContextFillPath(contextRef);
    
    [@"圆" drawInRect:CGRectMake(200, 60 + 100 + 20, 100, 20) withAttributes:self.attribute];
    
    CGContextAddEllipseInRect(contextRef, CGRectMake(200, 250, 100, 80));
    CGContextSetFillColorWithColor(contextRef, [UIColor blueColor].CGColor);
    CGContextFillPath(contextRef);
    
    [@"椭圆" drawInRect:CGRectMake(200, 250 + 80 + 20, 100, 20) withAttributes:self.attribute];
    
    //虚线
    CGContextSetStrokeColorWithColor(contextRef, [UIColor blackColor].CGColor);
    CGContextSetLineCap(contextRef, kCGLineCapButt);
    CGContextSetLineWidth(contextRef, 5);
    CGContextMoveToPoint(contextRef, 0, 450);
    CGContextAddLineToPoint(contextRef, kScreenWidth, 450);
    CGFloat array0[] = {10,20,30,40};//设置虚线排列方式:下面的array0中的数字表示先绘制10个点空20个点再绘制30个点再空40个点，如此反复循环
    CGContextSetLineDash(contextRef, 0, array0, 4);//最后一个参数“4”代表排列的个数，取前面四个值(10,20,30,40)反复循环
    CGContextDrawPath(contextRef, kCGPathStroke);
    
    CGContextMoveToPoint(contextRef, 0, 470);
    CGContextAddLineToPoint(contextRef, kScreenWidth, 470);
    CGFloat array1[] = {10,20,30,40};
    CGContextSetLineDash(contextRef, 0, array1, 1);//最后一个参数“1”代表排列的个数，取前面1个值(10)反复循环
    CGContextDrawPath(contextRef, kCGPathStroke);
    
    CGContextMoveToPoint(contextRef, 0, 490);
    CGContextAddLineToPoint(contextRef, kScreenWidth, 490);
    CGFloat array2[] = {10,20,30,40};
    CGContextSetLineDash(contextRef, 10, array2, 1);//第二个参数表示第一次“循环”时跳过十个点
    CGContextDrawPath(contextRef, kCGPathStroke);
    
    [@"虚线" drawInRect:CGRectMake(0, 490 + 20, kScreenWidth, 20) withAttributes:self.attribute];
    
    //弧线
    CGContextSetLineDash(contextRef, 0, array2, 0);
    CGContextSetLineWidth(contextRef, 1);
    CGContextSetStrokeColorWithColor(contextRef, [UIColor redColor].CGColor);
    CGContextAddArc(contextRef, 420, 150, 30, 0, M_PI, 1);
    CGContextStrokePath(contextRef);
    /*
     CGContextAddArc(contextRef, 420, 150, 30, 0, M_PI, 1)
     圆心：(420, 150) 半径：30 启始角度：0 结束角度：M_PI 旋转方向：1 顺时针 0 逆时针
     */
    
    CGContextMoveToPoint(contextRef,450,240);
    CGContextAddLineToPoint(contextRef,400,270);
    CGContextAddLineToPoint(contextRef,430,310);
    
    CGContextMoveToPoint(contextRef,450,240);//设置圆弧的起点
    CGContextAddArcToPoint(contextRef,400,270,430,310,40);
    CGContextStrokePath(contextRef);
    
    [@"(450,240)" drawInRect:CGRectMake(450, 220, 70, 20) withAttributes:self.attribute];
    [@"(400,270)" drawInRect:CGRectMake(400 - 70, 270 - 10, 70, 20) withAttributes:self.attribute];
    [@"(430,310)" drawInRect:CGRectMake(430, 310 + 5, 70, 20) withAttributes:self.attribute];
    
    /*
     调用CGContextMoveToPoint，设置圆弧的起点。(450,240)
     CGContextAddArcToPoint(contextRef,400,270,430,310,50):从(450,240)到(400,270)画一条线，再从(400,270)到(430,310)画一条线，两条线和半径(40)确定出一条弧线。弧线对应的圆与两条线相切。
     */
    
    [@"弧线" drawInRect:CGRectMake(400, 250 + 80 + 20, 40, 20) withAttributes:self.attribute];
    
    
    CGContextSetLineWidth(contextRef, 5);
    CGContextSetStrokeColorWithColor(contextRef, [UIColor blueColor].CGColor);
    CGContextMoveToPoint(contextRef, 620, 150);
    CGContextAddArc(contextRef, 620, 150, 60,  -60 * M_PI / 180, -120 * M_PI / 180, 1);
    
    CGContextDrawPath(contextRef, kCGPathFill); //绘制路径
//    CGContextDrawPath(contextRef, kCGPathEOFill);
//    CGContextDrawPath(contextRef, kCGPathStroke);
//    CGContextDrawPath(contextRef, kCGPathFillStroke);
//    CGContextDrawPath(contextRef, kCGPathEOFillStroke);
    
    /*CGPathDrawingMode是填充方式,枚举类型
     kCGPathFill:只有填充（非零缠绕数填充），不绘制边框
     kCGPathEOFill:奇偶规则填充（多条路径交叉时，奇数交叉填充，偶交叉不填充）
     kCGPathStroke:只有边框
     kCGPathFillStroke：既有边框又有填充
     kCGPathEOFillStroke：奇偶填充并绘制边框
     */
    
    [@"扇形" drawInRect:CGRectMake(600, 60 + 100 + 20, 40, 20) withAttributes:self.attribute];
    
    
    //三角形，添加多个点即可生成多边形
    CGPoint points[3];//坐标点
    points[0] = CGPointMake(600,240);//坐标点1
    points[1] = CGPointMake(600,340);//坐标点2
    points[2] = CGPointMake(650,340);//坐标点3
    CGContextAddLines(contextRef, points, 3);//添加线
    CGContextSetLineWidth(contextRef, 0);
    CGContextDrawPath(contextRef, kCGPathFillStroke); //根据坐标绘制路径

    [@"三角形" drawInRect:CGRectMake(600, 340 + 20, 50, 20) withAttributes:self.attribute];
    
    CGContextClosePath(contextRef);
}


@end
