//
//  ViewController.m
//  UIScroolView
//
//  Created by zhangbo on 16/1/15.
//  Copyright (c) 2016年 beiwo. All rights reserved.
//

#import "ViewController.h"
#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kScreenHeight   [UIScreen mainScreen].bounds.size.height


#define kScrollViewWidth   300
#define kScrollViewHeight  300

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建滑动视图
    [self creatScrollView];
}
/*
//创建滑动视图
- (void)creatScrollView {

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 200)];
    [self.view addSubview:scrollView];
    
    //添加子视图
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth/2, 200)];
    view.backgroundColor = [UIColor cyanColor];
    [scrollView addSubview:view];
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(kScreenWidth/2, 0, kScreenWidth/2, 200)];
    view1.backgroundColor = [UIColor brownColor];
    [scrollView addSubview:view1];
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(kScreenWidth, 0, kScreenWidth, 200)];
    view2.backgroundColor = [UIColor redColor];
    [scrollView addSubview:view2];
    
    //要滑动视图要创建内容
    scrollView.contentSize = CGSizeMake(kScreenWidth*2, 400);
    
    //常用属性
    //水平滑条默认是YES
    scrollView.showsHorizontalScrollIndicator = YES;
    //竖直滑条默认也是YES
    scrollView.showsVerticalScrollIndicator = NO;
    
    //滚动条的样式
    scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    //滚动到末尾时是否显示反弹效果 默认YES
    scrollView.bounces = NO;
    
    //是否有缩放大小时的反弹效果
    scrollView.bouncesZoom = YES;
    
    //内容偏移量，当以x轴为正向的时候向左偏移，y轴为正的时候向上偏移
    scrollView.contentOffset = CGPointMake(0,kScreenHeight);
    
    //分页效果 默认是NO,分页根据滑动视图的宽度决定
    scrollView.pagingEnabled = YES;
    
    //滚动效果
    scrollView.scrollEnabled = YES;
    
    
    //-------------代理协议 －－－－－
    scrollView.delegate = self;
    

}
#pragma mark - UIScrollView  Delegate
//在整个滑动的过程中都会被调用的
//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    
//    NSLog(@"视图拖动");
//}

//手指将要拖动视图时，调用
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"即将拖动视图");

}

//手指离开视图，结束拖动,是否有减速
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {

    NSLog(@"结束拖动，没有减速");
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {

    NSLog(@"手指离开时给个速度，开始减速");
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {

    NSLog(@"结束减速");

}

*/

- (void)creatScrollView {
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(40, 80, kScrollViewWidth, kScrollViewHeight)];
    [self.view addSubview:scrollView];
    
    //添加子视图
    for (int i = 0; i < 10; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(kScrollViewWidth*i, 0, kScrollViewWidth, kScrollViewHeight)];
        view.backgroundColor = [UIColor colorWithRed:rand()%10*0.1 green:rand()%10*0.1 blue:rand()%10*0.1 alpha:0.8];
        [scrollView addSubview:view];
        
    }
    
    
    //设置滑动视图内容
    scrollView.contentSize = CGSizeMake(kScrollViewWidth*10, kScrollViewHeight+100);

}

@end
