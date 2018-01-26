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
}

-(void)registerViewController:(UIViewController *)vc title:(NSString *)title iconName:(NSString *)iconName{
    
    
}


@end
