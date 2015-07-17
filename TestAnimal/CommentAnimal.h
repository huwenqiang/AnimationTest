//
//  CommentAnimal.h
//  TestAnimal
//
//  Created by huwenqiang on 15/7/17.
//  Copyright (c) 2015年 huwenqiang. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
/**
 *  简单的动画合集
 */
@interface CommentAnimal : CABasicAnimation

+(CABasicAnimation *)animationShanShuo:(CFTimeInterval)duration repeatCount:(float)count isRemoveOnCompletion:(BOOL)isreMove fromValue:(id)fromValue toValue:(id)toValue;

/**
 *  移动动画
 *
 *  @param time
 *  @param x
 *
 *  @return
 */
+(CABasicAnimation *)animtionToMoveX:(NSNumber *)x andTime:(float)time;

/**
 *  缩放动画
 *
 *  @param fromValue
 *  @param tovalue
 *  @param time
 *  @param repeatTimes
 *
 *  @return 
 */
+(CABasicAnimation *)animaltionToscale:(NSNumber *)fromValue toValue:( NSNumber *)tovalue durTimes:(float)time repeat:(float)repeatTimes;

/**
 *   旋转动画
 *
 *  @param duration
 *  @param degree
 *  @param x
 *  @param y
 *  @param z
 *  @param repeatCount
 *
 *  @return
 */
+(CABasicAnimation *)animationTorotation:(float)duration degree:(float)degree toX:(float)x toY:(float)y toZ:(float)z repeatCount:(int)repeatCount;

/**
 *  路径动画
 *
 *  @param path
 *  @param time
 *  @param repeatTimes
 *
 *  @return
 */
+(CAKeyframeAnimation *)animationToframe:(CGMutablePathRef)path durTimes:(float)time repeat:(float)repeatTimes;

@end
