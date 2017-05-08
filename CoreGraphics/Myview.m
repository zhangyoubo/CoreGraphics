//
//  Myview.m
//  CoreGraphics
//
//  Created by Apple on 15/9/11.
//  Copyright (c) 2015年 zf. All rights reserved.
//

#import "Myview.h"

@implementation Myview

-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor whiteColor];
    }
    return self;
}

/***********贝塞尔曲线 和 CGContextRef 混合使用**************/
/*-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    //1.生成圆角路径，并填充颜色
    CGRect myRect = CGRectMake(60, 80, 200, 200);
    UIBezierPath *roundRect = [UIBezierPath bezierPathWithRoundedRect:myRect
                                                         cornerRadius:30];
    CGContextSetRGBFillColor(context, 222.0f/255.0f, 169.0f/222.0f, 269.0f/255.0f, 1);
    CGContextSetShadow(context, CGSizeMake(0, 5), 10);
    [roundRect fill];
 
    
    //6.绘制文字
    CGContextSetShadowWithColor(context, CGSizeMake(0, -1), 0, [UIColor whiteColor].CGColor);
    CGContextSetRGBFillColor(context, 0, 0, 0, 1);
    [@"iOS 5 Core Frameworks" drawInRect:CGRectMake(0, 120, 320, 200) withFont:[UIFont systemFontOfSize:18] lineBreakMode:UILineBreakModeClip alignment:UITextAlignmentCenter];

}*/

-(void)drawRect:(CGRect)rect
{
    
    /* 1.*********利用贝塞尔曲线绘图********************/
     
//    //1.新建路径，添加线
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    [path moveToPoint:CGPointMake(160, 20)];
//    [path addLineToPoint:CGPointMake(260, 340)];
//    //2.添加半圆路径，注意设置顺时针
//    [path addArcWithCenter:CGPointMake(160, 340)
//                    radius:100
//                startAngle:0
//                  endAngle:M_PI
//                 clockwise:YES];
//    
//    //3.将路径封闭，会连接当前路径中的第一个和最后一个点。
//    [path closePath];
//    [path fill];
    
    //绘制圆
//    UIBezierPath *path=[UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:100.0 startAngle:0 endAngle:180 clockwise:YES];
    //绘制矩形
//    UIBezierPath *path=[UIBezierPath bezierPathWithRect:CGRectMake(20, 20, 150, 150)];
    
    //绘制椭圆
//    UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 120, 60)];
    //设置颜色
//    [[UIColor redColor]set];
//    
//    path.lineWidth=5;
//    [path fill];
//    [[UIColor yellowColor]set];
//    [path stroke];
    
    
    /*  2.********利用CGContextRef绘图********************/
    
      CGContextRef context = UIGraphicsGetCurrentContext();
//    CGMutablePathRef path=CGPathCreateMutable();
//    
//    CGPathMoveToPoint(path, NULL, 50, 50);
//    CGPathAddLineToPoint(path, NULL, 150, 150);
//    CGPathAddLineToPoint(path, NULL, 50, 150);
//    CGPathCloseSubpath(path);
//    
//    CGContextAddPath(context, path);
//    
//    CGFloat myColor[4]={1.0f,1.0f,0,1.0f};
//    CGContextSetFillColor(context,myColor);
//    CGContextSetStrokeColor(context, myColor);
//    CGContextSetShouldAntialias(context, NO);
//    CGContextSetLineWidth(context, 15.0);
//    CGContextSetLineJoin(context, kCGLineJoinMiter);
//    
//    CGContextDrawPath(context, kCGPathStroke);
//    
//    CGPathRelease(path);
//    CGContextRelease(context);
    
    
    
    /************画矩形****************/
    CGRect rect2=CGRectMake(0, 0, 200, 200);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineWidth(context, 2.0);
    CGContextStrokeRect(context, rect2);
}


@end
