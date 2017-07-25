//
//  ViewController.m
//  Demo_换肤
//
//  Created by goulela on 2017/7/25.
//  Copyright © 2017年 MC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView * imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(100, 100, 200, 200);
    imageView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:imageView];

    imageView.image = [UIImage imageNamed:@"status"];


}




@end
