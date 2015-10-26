//
//  main.m
//  AssProperty
//
//  Created by Macro on 10/26/15.
//  Copyright © 2015 Macro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Ass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"Macro ";
        str.strFlag = @"abc";
        str.intFlag = 456;
        NSLog(@"%@:%@-%d", str, str.strFlag, str.intFlag);
    }
    return 0;
}
