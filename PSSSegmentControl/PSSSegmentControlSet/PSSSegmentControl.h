//
//  PSSSegmentControl.h
//  PSSSegmentControl
//
//  Created by 庞仕山 on 16/5/20.
//  Copyright © 2016年 庞仕山. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^PSSButtonBlock)(NSInteger index);

@interface PSSSegmentControl : UIView

/**
 *  标识选中状态线的高度
 */
@property (nonatomic, assign) CGFloat lineHeight;
/**
 *  标识选中状态线的宽度
 */
@property (nonatomic, assign) CGFloat lineWidth;
/**
 *  标识选中状态线的颜色
 */
@property (nonatomic, strong) UIColor *lineColor;
/**
 *  正常状态下, 文字的颜色
 */
@property (nonatomic, strong) UIColor *normalColor;
/**
 *  选中状态下, 文字的颜色
 */
@property (nonatomic, strong) UIColor *selectedColor;
/**
 *  设置选中
 */
@property (nonatomic, assign) NSInteger selectedIndex;
/**
 *  线移动的动画时间
 */
@property (nonatomic, assign) CGFloat lineAnimation;
/**
 *  文字字体
 */
@property (nonatomic, assign) UIFont *labelFont;
/**
 *  下面那条线的颜色
 */
@property (nonatomic, strong) UIColor *bottomLineColor;

@property (nonatomic, copy) PSSButtonBlock buttonBlock;
- (void)setButtonBlock:(PSSButtonBlock)buttonBlock;

///
- (instancetype)initWithFrame:(CGRect)frame
                   titleArray:(NSArray *)titleArray;

@end
