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
//    
//    NSString *urlString = @"http://brandish.com/jwplayer/index.html";
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [webView loadRequest:urlRequest];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0,100.0f, 290.0, 180.0)];
    
    webView.scrollView.scrollEnabled = NO;
    
    webView.delegate = self;
    
//    NSString *html = @"<html><head><script src='//decor.waywire.com/javascript/waywire_ref.js'></script></head><body><iframe src='https://player.waywire.com/?id=";
//    NSString *id_video = @"QKJG7C112NY3BLGV";
//    NSString *html2 =@"&chromeless=true&autoplay=true&force_autoplay=true' frameborder='0' width='290' height='170' allowfullscreen></iframe></body></html>";

    NSString *html = @"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xKcqJTrpACo?autoplay=true\" frameborder=\"0\" allowfullscreen> </iframe>";
//    [webView loadHTMLString:[NSString stringWithFormat:@"%@%@%@", html,id_video,html2] baseURL:nil];
    [webView loadHTMLString:[NSString stringWithFormat:@"%@", html] baseURL:nil];
    [self.view addSubview:webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
