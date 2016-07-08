//
//  MainViewController.m
//  DYCustomTakePhtotoDemo
//
//  Created by 袁斌 on 16/4/2.
//  Copyright © 2016年 __defaultyuan. All rights reserved.
//

#import "MainViewController.h"

#import "LMSTakePhotoController.h"

@interface MainViewController ()<LMSTakePhotoControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *photoImgView;//照片

//拍照
- (IBAction)takePicture:(id)sender;


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"自定义拍照";
    //觉得这个功能可以的话、可以去点个赞 --> 本人github仓库https://github.com/DefaultYuan/__defaultyuan
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma LMSTakePhotoControllerDelegate
-(void)didFinishPickingImage:(UIImage *)image
{
    self.photoImgView.image = image;
}

- (IBAction)takePicture:(id)sender {

    LMSTakePhotoController *p = [[LMSTakePhotoController alloc] init];
    if (!p.isAuthorizedCamera || !p.isCameraAvailable) {
        NSLog(@"不能拍照");
        return;
    }
    
    //注释以下两行其中一行可以切换前置或者后置摄像头
//    p.position = TakePhotoPositionBack;
    p.position = TakePhotoPositionFront;

    //注释以下两行其中一行可以实现身份证正面照拍摄或者背面照拍摄
//    p.functionType = TakePhotoIDCardFrontType;
//    p.functionType = TakePhotoIDCardBackType;

    p.delegate = self;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:p];
    [self presentViewController:nav animated:YES completion:NULL];

}
@end
