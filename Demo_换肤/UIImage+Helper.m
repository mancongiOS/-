//
//  UIImage+Helper.m
//  Demo_换肤
//
//  Created by goulela on 2017/7/25.
//  Copyright © 2017年 MC. All rights reserved.
//

#import "UIImage+Helper.h"
#import <objc/runtime.h>

@implementation UIImage (Helper)

+ (void)load {
    Method imageNameddd = class_getClassMethod([UIImage class], @selector(imageNamed:));
    Method MC_imageNamed = class_getClassMethod([UIImage class], @selector(MC_imageNamed:));
    method_exchangeImplementations(imageNameddd, MC_imageNamed);
}

+ (nullable UIImage *)MC_imageNamed:(NSString *)name {
    // 用户的权限
    NSInteger roleId = 0;
    if (roleId == 0) {
        name = [NSString stringWithFormat:@"%@_normal",name];
    } else {
        name = [NSString stringWithFormat:@"%@_vip",name];
    }
    return [self MC_imageNamed:name];
}


@end
