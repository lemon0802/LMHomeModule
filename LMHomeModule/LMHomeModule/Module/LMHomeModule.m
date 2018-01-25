//
//  LMHomeModule.m
//  LMHomeModule
//
//  Created by KADFWJ on 2018/1/25.
//  Copyright © 2018年 Lemon Fan. All rights reserved.
//

#import "LMHomeModule.h"
#import <BeeHive/BHModuleProtocol.h>
#import "LMHomeVC.h"
#import <BeeHive/BeeHive.h>
#import <LMHomeServiceProtocol.h>

@interface LMHomeModule()<BHModuleProtocol>


@end

@implementation LMHomeModule
//动态注册Module
BH_EXPORT_MODULE()

- (void)modSetUp:(BHContext *)context
{
    //动态注册Service 会造成编译上的耦合 如果在Service.Plist文件中注册就不会
    [[BeeHive shareInstance] registerService:@protocol(LMHomeServiceProtocol) service: [LMHomeVC class]];
    NSLog(@"HomeModule setup");
}

@end
