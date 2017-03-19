//
//  ViewController.m
//  ZJFlickerLabel
//
//  Created by 张建 on 2017/3/19.
//  Copyright © 2017年 张建. All rights reserved.
//

#import "ViewController.h"
#import "WSShiningLabel.h"

@interface ViewController (){
    WSShiningLabel *label1;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    [self addLabel];
    
}
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    dispatch_async(dispatch_get_main_queue(), ^{
        label1.isPlaying = false;
//        label2.isPlaying = false;
//        label3.isPlaying = false;
//        label4.isPlaying = false;
        [label1 startShimmer];
//        [label2 startShimmer];
//        [label3 startShimmer];
//        [label4 startShimmer];
    });
}
- (void)addLabel{
    
    label1 = [[WSShiningLabel alloc] init];
    label1.frame = CGRectMake(50, 135, 350, 25);
    label1.text = @"春来了，春天里，还记得那时候";
    label1.textColor = [UIColor grayColor];
    label1.font = [UIFont systemFontOfSize:20];
    label1.shimmerColor = [UIColor orangeColor];   // 高亮颜色
    [label1 startShimmer];                 // 开启闪烁
    [self.view addSubview:label1];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
