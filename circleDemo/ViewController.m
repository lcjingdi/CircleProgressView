//
//  ViewController.m
//  circleDemo
//
//  Created by jingdi on 16/8/18.
//  Copyright © 2016年 lcjingdi. All rights reserved.
//

#import "ViewController.h"
#import "EKWCircleView.h"

@interface ViewController ()
@property (nonatomic, strong) EKWCircleView *circleView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    EKWCircleView *view = [[EKWCircleView alloc] init];
    view.frame = CGRectMake(50, 50, 200, 200);
    [self.view addSubview:view];
    self.circleView.progress = 0.0;
    self.circleView = view;
    
    UILabel *title = [[UILabel alloc] init];
    title.backgroundColor = [UIColor redColor];
    title.text = @"50";
    title.font = [UIFont systemFontOfSize:70];
    [title sizeToFit];
    title.center = self.circleView.center;
    [self.view addSubview:title];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    CGFloat abc = self.circleView.progress;
//    if (abc > 1.0) {
//        abc = 0;
//    } else {
//        abc += 0.1;
//    }
    self.circleView.progress = 1;
}

@end
