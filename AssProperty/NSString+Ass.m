//
//  NSString+Ass.m
//
//
//  Created by MacroHong on 9/21/15.
//  Copyright © 2015 MacroHong. All rights reserved.
//

#import "NSString+Ass.h"
#import <objc/runtime.h>

@implementation NSString (Ass)

static int _intFlag;

static NSString *_strFlag;

- (void)setStrFlag:(NSString *)flag {
    // void objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy)
    objc_setAssociatedObject(self, &_strFlag, flag, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)strFlag {
    // id objc_getAssociatedObject(id object, const void *key)
    return objc_getAssociatedObject(self, &_strFlag);
}

- (void)setIntFlag:(int)intFlag {
    NSNumber *t = @(intFlag);
    // void objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy)
    objc_setAssociatedObject(self, &_intFlag, t, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (int)intFlag {
    // id objc_getAssociatedObject(id object, const void *key)
    NSNumber *t = objc_getAssociatedObject(self, &_intFlag);
    return (int)[t integerValue];
}

@end
