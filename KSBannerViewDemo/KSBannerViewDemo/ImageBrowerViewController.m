//
//  ImageBrowerViewController.m
//  KSBannerViewDemo
//
//  Created by Mr.kong on 2017/5/4.
//  Copyright © 2017年 Mr.kong. All rights reserved.
//

#import "ImageBrowerViewController.h"
#import "KSBannerView.h"
#import "Model.h"

@interface ImageBrowerViewController ()
@property (nonatomic, strong) KSBannerView* bannerView;
@end

@implementation ImageBrowerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.bannerView = [[KSBannerView alloc] init];
    [self.view addSubview:self.bannerView];
    
    
    self.bannerView.timeInterval = 3;
    self.bannerView.contentsGravity = kCAGravityResizeAspect;
    self.bannerView.pageIndicatorImage = [UIImage imageNamed:@"pageIndicatorImage"];
    self.bannerView.currentPageIndicatorImage = [UIImage imageNamed:@"currentPageIndicatorImage"];
    
    Model* obj1 = [[Model alloc] init];
    obj1.imageUrl = @"http://img.ivsky.com/img/bizhi/pre/201703/06/lykan_hypersport.jpg";
    Model* obj2 = [[Model alloc] init];
    obj2.imageUrl = @"http://img03.tooopen.com/images/20160703/tooopen_sy_168772353872.jpg";
    Model* obj3 = [[Model alloc] init];
    obj3.imageUrl = @"http://img05.tooopen.com/images/20151003/tooopen_sy_144338714914.jpg";
    Model* obj4 = [[Model alloc] init];
    obj4.imageUrl = @"http://img05.tooopen.com/images/20150912/tooopen_sy_142398756188.jpg";
    Model* obj5 = [[Model alloc] init];
    obj5.imageUrl = @"http://img05.tooopen.com/images/20150418/tooopen_sy_119212288853.jpg";
    
    NSMutableArray* banners = [NSMutableArray array];
    [banners addObject:obj1];
    [banners addObject:obj2];
    [banners addObject:obj3];
    [banners addObject:obj4];
    [banners addObject:obj5];
    
    self.bannerView.images = banners;
    
    self.bannerView.didSelectedHandle = ^(NSUInteger idx, Model* obj) {
        NSLog(@"点击了%ld",idx);
    };
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    self.bannerView.frame = self.view.bounds;
}

@end
