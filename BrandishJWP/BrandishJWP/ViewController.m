//
//  ViewController.m
//  BrandishJWP
//
//  Created by Phoenix on 4/25/16.
//  Copyright © 2016 Brandish International, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIWebView *webView = [[UIWebView alloc] init];
//    webView.frame = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20);
//    webView.delegate = self;
//    webView.backgroundColor = [UIColor darkGrayColor];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 32.0, 320.0, 180.0)];
    webView.mediaPlaybackRequiresUserAction = NO;
    webView.scrollView.scrollEnabled = NO;
    
    webView.delegate = self;
    
    // Waywire player Sample load
//    NSString *html = @"<html><head><script src='//decor.waywire.com/javascript/waywire_ref.js'></script></head><body><iframe src='https://player.waywire.com/?id=";
//    NSString *id_video = @"MLFV0C0J4TNW23KZ";
//    NSString *html2 =@"&force_autoplay=true' frameborder='0' width='290' height='170' allowfullscreen></iframe></body></html>";
//    [webView loadHTMLString:[NSString stringWithFormat:@"%@%@%@", html,id_video,html2] baseURL:nil];

    // Direct YouTube Video Load
//    NSString *html = @"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xKcqJTrpACo?autoplay=true\" frameborder=\"0\" allowfullscreen> </iframe>";
//    [webView loadHTMLString:[NSString stringWithFormat:@"%@", html] baseURL:nil];
    
//    // JWPlayer
    __block NSString *urlString = @"https://player.waywire.com/?id=SBTM9X1KFBMP2PZZ&autoplay=true&force_autoplay=true";
    __block NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:3600];
    [webView loadRequest:request];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        urlString = @"https://player.waywire.com/?id=MLFV0C0J4TNW23KZ&autoplay=true&force_autoplay=true";
//        url = [NSURL URLWithString:urlString];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:3600];
//        [webView loadRequest:request];
//    });

    [self.view addSubview:webView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
