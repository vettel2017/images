//
//  ListModel.m
//  Quart2D
//
//  Created by Luuuo on 2018/2/9.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import "ListModel.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width

@implementation ListModel

+(instancetype)initWithDrawType:(DrawType)drawtype{
    
    ListModel *model = [self.class new];
    model.ViewControllerName = @"DrawViewController";
    
    switch (drawtype) {
        case kCoreGraphics:
        {
            model.name = @"CoreGraphicsDraw";
            model.viewName = @"CoreGraphicsView";
            model.width = 700;
        }
            break;
        case kUIKitDraw:
        {
            model.name = @"UIKitDraw";
            model.viewName = @"UIKitView";
            model.width = kScreenWidth;
        }
            break;
        case kDrawDelegate:
        {
            model.name = @"DrawDelegate";
            model.viewName = @"DrawDelegateView";
            model.width = kScreenWidth;
        }
            break;
        case kGraphicsGetImage:
        {
            model.name = @"GraphicsGetImage";
            model.viewName = @"GraphicsGetImageView";
            model.width = kScreenWidth;
        }
            break;
        case kUIKitGraphics:
        {
            model.name = @"UIKitGraphics";
            model.viewName = @"UIKitGraphicsView";
            model.width = kScreenWidth;
        }
            break;
            
        default:
            break;
    }
    
    return model;
}

@end
