//
//  CommentAnimal.m
//  TestAnimal
//
//  Created by huwenqiang on 15/7/17.
//  Copyright (c) 2015年 huwenqiang. All rights reserved.
//

#import "CommentAnimal.h"

@implementation CommentAnimal

+(CABasicAnimation *)animationShanShuo:(CFTimeInterval)duration repeatCount:(float)count isRemoveOnCompletion:(BOOL)isreMove fromValue:(id)fromValue toValue:(id)toValue{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];//必须写opacity才行。
    animation.fromValue = fromValue;
    animation.toValue = toValue;
    animation.autoreverses = YES;
    animation.duration = duration;
    animation.repeatCount = count;
    animation.removedOnCompletion = isreMove;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];///没有的话是均匀的动画。
    
    return animation;
}


+(CABasicAnimation *)animtionToMoveX:(NSNumber *)x andTime:(float)time{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];///.y的话就向下移动。
    animation.toValue = x;
    animation.duration = time;
    animation.removedOnCompletion = NO;
    animation.repeatCount = MAXFLOAT;
    animation.fillMode = kCAFillModeForwards;
    
    return animation;
}


+(CABasicAnimation *)animaltionToscale:(NSNumber *)fromValue toValue:( NSNumber *)tovalue durTimes:(float)time repeat:(float)repeatTimes{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.fromValue = fromValue;
    animation. toValue = tovalue;
    animation. autoreverses = NO;//此处改为YES 效果会不一样哦
    animation. repeatCount = repeatTimes;
    animation. duration = time;
    animation. removedOnCompletion = NO;
    animation. fillMode = kCAFillModeForwards ;
    
    return  animation;
}


+(CABasicAnimation *)animationTorotation:(float)duration degree:(float)degree toX:(float)x toY:(float)y toZ:(float)z repeatCount:(int)repeatCount{
    
    CATransform3D rotationTransform = CATransform3DMakeRotation(degree, x , y , z);
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    
    animation.toValue = [ NSValue valueWithCATransform3D :rotationTransform];
    
    animation.duration =  duration;
    
    animation.autoreverses = YES ;
    
    animation.cumulative = NO ;
    
    animation.fillMode = kCAFillModeForwards ;
    
    animation.repeatCount = repeatCount;
    
    animation.delegate = self ;
    
    return animation;
    
}

+(CAKeyframeAnimation *)animationToframe:(CGMutablePathRef)path durTimes:(float)time repeat:(float)repeatTimes{
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position" ];
    animation.path = path;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards ;
    animation.timingFunction = [CAMediaTimingFunction functionWithName : kCAMediaTimingFunctionEaseIn];
    animation.autoreverses = NO ;
    animation.duration = time;
    animation.repeatCount = repeatTimes;
    
    return animation;
}

@end
