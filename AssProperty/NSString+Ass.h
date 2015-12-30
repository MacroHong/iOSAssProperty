//
//  NSString+Ass.h
//
//
//  Created by MacroHong on 9/21/15.
//  Copyright © 2015 MacroHong. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 * 给已有类添加属性
 * 在这里以系统的NSString类为例,
 * 给NSString类添加两个属性,
 * 一个对象属性,
 * 一个非对象属性,
 * 以此来表达runtime的使用.
 */

@interface NSString (Ass)

@property (nonatomic, strong) NSString *strFlag;

//// 对象属性的set和get
//- (void)setStrFlag:(NSString *)strFlag;
//- (NSString *)strFlag;

@property (nonatomic, assign) int intFlag;

//// 非对象属性的set和get
//- (void)setIntFlag:(int)intFlag;
//- (int)intFlag;

@end