//
//  ViewController.m
//  环信聊天Demo
//
//  Created by 袁斌 on 16/4/15.
//  Copyright © 2016年 __defaultyuan. All rights reserved.
//

#import "ViewController.h"
#import "ChatViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *chatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    chatBtn.frame = CGRectMake(50, 50, 100, 50);
    [chatBtn setTitle:@"聊天" forState:UIControlStateNormal];
    [chatBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    chatBtn.backgroundColor = [UIColor whiteColor];
    [chatBtn addTarget:self action:@selector(gotoChatRoom) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chatBtn];
    
}
- (void)gotoChatRoom
{
    ChatViewController *chatVC = [[ChatViewController alloc] initWithConversationChatter:@"easeuidemo2" conversationType:EMConversationTypeChat];
    chatVC.title = @"easeuidemo2";
    [self.navigationController  pushViewController:chatVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
