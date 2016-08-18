//
//  EKWCircleView.m
//  circleDemo
//
//  Created by jingdi on 16/8/18.
//  Copyright © 2016年 lcjingdi. All rights reserved.
//

#import "EKWCircleView.h"

@implementation EKWCircleView
#define pi 3.14159265359
#define   DEGREES_TO_RADIANS(degrees)  ((pi * degrees)/ 180)
- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *propress = [UIBezierPath bezierPath];
    
    [propress addArcWithCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2) radius:rect.size.height / 2.0 - 10 startAngle:DEGREES_TO_RADIANS(120) endAngle:DEGREES_TO_RADIANS(60) clockwise:YES];
    propress.lineWidth = 6;
    [[UIColor blueColor] setStroke];
    [propress stroke];
    
    CGFloat float1 = self.progress * 300;
    if (float1 + 120 > 360) {
        float1 = float1 + 120 - 360;
    } else {
        float1 = float1 + 120;
    }

    UIBezierPath *propress2 = [UIBezierPath bezierPath];
    [propress2 addArcWithCenter:CGPointMake(rect.size.width / 2, rect.size.height / 2) radius:rect.size.height / 2.0 - 10 startAngle:DEGREES_TO_RADIANS(120) endAngle:DEGREES_TO_RADIANS(float1) clockwise:YES];
    propress2.lineWidth = 5;
    [[UIColor yellowColor] setStroke];
    [propress2 stroke];

//    NSLog(@"%@", NSStringFromCGRect(rect));
    
//    NSString *text = @"text";
//    [text drawInRect:rect withAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:100],NSForegroundColorAttributeName:[UIColor redColor],NSBackgroundColorAttributeName:[UIColor greenColor]}];
}

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    [self setNeedsDisplay];
}

@end
