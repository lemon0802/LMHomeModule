//
//  LMHomeVC.m
//  LMHomeModule
//
//  Created by KADFWJ on 2018/1/25.
//  Copyright © 2018年 Lemon Fan. All rights reserved.
//

#import "LMHomeVC.h"
#import <LMHomeServeice/LMHomeServiceProtocol.h>

@interface LMHomeVC ()<LMHomeServiceProtocol>

@end

@implementation LMHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"首页";
    
    UIButton *button = [UIButton  buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 80, 100, 40);
    [button setTitle:@"传送数据" forState:(UIControlStateNormal)];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(clickBtn) forControlEvents:(UIControlEventTouchUpInside)];
}

-(void) clickBtn{
    
    NSUserActivity *ac = [[NSUserActivity alloc] initWithActivityType:@"给UserModule传数据"];
    ac.userInfo = @{@"name":@"lemon"};
    [BHContext shareInstance].userActivityItem.userActivity = ac;
    [BeeHive shareInstance].context = [BHContext shareInstance];
    //自定义事件要超过1000
    [BeeHive triggerCustomEvent:10002];
    
}

-(void)registerViewController:(UIViewController *)vc title:(NSString *)title iconName:(NSString *)iconName{
    
    
}

- (void)test {
    
}



@end
