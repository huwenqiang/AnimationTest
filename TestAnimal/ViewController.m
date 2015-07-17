//
//  ViewController.m
//  TestAnimal
//
//  Created by huwenqiang on 15/7/17.
//  Copyright (c) 2015年 huwenqiang. All rights reserved.
//

#import "ViewController.h"
#import "CommentAnimal.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    label.text = @"闪烁动画";
    label.textColor = [UIColor whiteColor];
    [self.view addSubview:label];
    CABasicAnimation *animal = [CommentAnimal animationShanShuo:1 repeatCount:MAXFLOAT isRemoveOnCompletion:YES fromValue:[NSNumber numberWithFloat:1.0] toValue:[NSNumber numberWithFloat:0.2]];
    [label.layer addAnimation:animal forKey:nil];
    
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(100, 150, 200, 50)];
    label1.text = @"位移动画";
    label1.textColor = [UIColor whiteColor];
    [self.view addSubview:label1];
    [label1.layer addAnimation:[CommentAnimal animtionToMoveX:[NSNumber numberWithFloat:102.3] andTime:6] forKey:nil];
    
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    label2.text = @"缩放动画";
    label2.textColor = [UIColor whiteColor];
    label2.backgroundColor =[UIColor grayColor];
    [self.view addSubview:label2];
    [label2.layer addAnimation:[CommentAnimal animaltionToscale:[NSNumber numberWithFloat:1.0] toValue:[NSNumber numberWithFloat:0.2] durTimes:3 repeat:MAXFLOAT]forKey:nil];
    
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(100, 260, 200, 50)];
    label3.text = @"旋转动画";
    label3.textColor = [UIColor whiteColor];
    label3.backgroundColor =[UIColor lightGrayColor];
    [self.view addSubview:label3];
    [label3.layer addAnimation:[CommentAnimal animationTorotation:2 degree:M_PI toX:0 toY:100 toZ:0 repeatCount:MAXFLOAT]forKey:nil];
    
    
        CGMutablePathRef myPath = CGPathCreateMutable();
        CGPathMoveToPoint(myPath, nil,100, 330);
        CGPathAddCurveToPoint(myPath, nil, 50, 0, 50, 100, 0, 100);//15, 0, 15, 30, 0, 30
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake(100, 330, 80, 50)];
    label4.text = @"路径动画";
    label4.textColor = [UIColor whiteColor];
    label4.backgroundColor =[UIColor lightGrayColor];
    [self.view addSubview:label4];
    [label4.layer addAnimation:[CommentAnimal animationToframe:myPath durTimes:3 repeat:MAXFLOAT]forKey:nil];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
