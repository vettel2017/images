//
//  ListModel.h
//  Quart2D
//
//  Created by Luuuo on 2018/2/9.
//  Copyright © 2018年 Luuuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DrawType) {
    kUIKitDraw = 0,
    kCoreGraphics,
    kDrawDelegate,
    kGraphicsGetImage,
    kUIKitGraphics
};

@interface ListModel : NSObject
/** <#注释#> */
@property (nonatomic, copy) NSString *name;
/** <#注释#> */
@property (nonatomic, copy) NSString *ViewControllerName;
/** <#注释#> */
@property (nonatomic, copy) NSString *viewName;
/** <#name#> */
@property (nonatomic, assign) CGFloat width;
/** <#name#> */
@property (nonatomic, assign) DrawType drawType;

+(instancetype)initWithDrawType:(DrawType)drawtype;

@end
