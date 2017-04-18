# PSSSegmentControl
OC代码: 模仿UISegmentControl, 非常简洁, 只支持文字按钮, 头文件中有使用注释, 觉得方便的话记得star哦

## 头文件
```
#import <UIKit/UIKit.h>

typedef void(^PSSButtonBlock)(NSInteger index);

@interface PSSSegmentControl : UIView
// 下划移动线高度(有多粗)
@property (nonatomic, assign) CGFloat lineHeight;
// 下划移动线长度(有多长)
@property (nonatomic, assign) CGFloat lineWidth;
// 整条下划线颜色
@property (nonatomic, strong) UIColor *lineColor;
// 正常状态下按钮字体颜色
@property (nonatomic, strong) UIColor *normalColor;
// 选中状态下按钮字体颜色
@property (nonatomic, strong) UIColor *selectedColor;
// 选中的行数, set方法具有平移动画效果
@property (nonatomic, assign) NSInteger selectedIndex;
// 平移动画时长
@property (nonatomic, assign) CGFloat lineAnimation;
// 按钮字体
@property (nonatomic, assign) UIFont *labelFont;

// 选中按钮的block回调, 参数为 index
@property (nonatomic, copy) PSSButtonBlock buttonBlock;
- (void)setButtonBlock:(PSSButtonBlock)buttonBlock;

- (instancetype)initWithFrame:(CGRect)frame
                   titleArray:(NSArray *)titleArray;

@end
```
## 使用方式
```
PSSSegmentControl *segment = [[PSSSegmentControl alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 50) titleArray:@[@"11111", @"222222", @"33333"]];
    segment.backgroundColor = [UIColor blackColor]; // 控制底部线条的颜色
    segment.lineWidth = 100;
    segment.lineColor = [UIColor orangeColor];
    segment.selectedColor = [UIColor orangeColor]; // 选中字体颜色
    segment.normalColor = [UIColor grayColor]; // 选中字体颜色
    [self.view addSubview:segment];
    
    // 点击button
    [segment setButtonBlock:^(NSInteger index) {
        
    }];
```



