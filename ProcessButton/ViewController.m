//
//  ViewController.m
//  ProcessButton
//
//  Created by yuanzhou on 2017/9/5.
//  Copyright © 2017年 yuanzhou. All rights reserved.
//

#import "ViewController.h"
#import "ProcessLaunchImageView.h"

@interface ViewController ()

@end

@implementation ViewController


-(void)initNavigation{

    self.title = @"我的标题";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.view addSubview:[ProcessLaunchImageView initShareView:self.view.bounds bgImageName:@"launch_image" ShowType:ButtonTitleTimeShowType Time:6 ResultBlock:^{
//        NSLog(@"我点击了UIImageView");
//    }]];
    
    [self initNavigation];
    [[UIApplication sharedApplication].keyWindow addSubview:[ProcessLaunchImageView initShareView:self.view.bounds bgImageName:@"launch_image" ShowType:ButtonTitleTimeShowType Time:5 ResultBlock:^{
        NSLog(@"我点击了UIImageView");
    }]];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [[UIApplication sharedApplication].keyWindow addSubview:[ProcessLaunchImageView initShareView:self.view.bounds bgImageName:@"launch_image" ShowType:ButtonTitleTimeShowType Time:5 ResultBlock:^{
        NSLog(@"我点击了UIImageView");
    }]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
