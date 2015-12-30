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


- (void)setStrFlag:(NSString *)flag {
    // void objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy)
    SEL key = @selector(strFlag);
    objc_setAssociatedObject(self, key, flag, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)strFlag {
    // id objc_getAssociatedObject(id object, const void *key)
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setIntFlag:(int)intFlag {
    // void objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy)
    SEL key = @selector(intFlag);
    objc_setAssociatedObject(self, key, @(intFlag), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (int)intFlag {
    // id objc_getAssociatedObject(id object, const void *key)
    NSNumber *t = objc_getAssociatedObject(self,_cmd);
    return (int)[t integerValue];
}

@end
