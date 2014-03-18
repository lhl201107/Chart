//
//  ViewController.m
//  ChartForiOS
//
//  Created by kangmei_teach03 on 14-3-14.
//  Copyright (c) 2014年 kangmei_teach03. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建UIWebView
    UIWebView *WebView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 40, 568, 275)];
    [WebView setUserInteractionEnabled:YES];
    WebView.scalesPageToFit =YES;
    [WebView setBackgroundColor:[UIColor clearColor]];
    [WebView setOpaque:NO];//使网页透明

    [self.view addSubview:WebView];
    
    self.jsBridge = [TGJSBridge jsBridgeWithDelegate:self];
	WebView.delegate = self.jsBridge;

    NSURL* url = [[NSBundle mainBundle] URLForResource:@"dongtai" withExtension:@"html"];
    [WebView loadRequest:[NSURLRequest requestWithURL:url]];
}


/*

-(void)viewWillAppear:(BOOL)animated
{
    //创建UIWebView
    UIWebView *WebView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 20, 320, 568)];
    [WebView setUserInteractionEnabled:YES];
    WebView.scalesPageToFit =YES;
    [WebView setBackgroundColor:[UIColor clearColor]];
    [WebView setOpaque:NO];//使网页透明
    
    [self.view addSubview:WebView];
    
    self.jsBridge = [TGJSBridge jsBridgeWithDelegate:self];
	WebView.delegate = self.jsBridge;
    
    
    NSURL* url = [[NSBundle mainBundle] URLForResource:@"zhuzhuang_chart" withExtension:@"html"];
    [WebView loadRequest:[NSURLRequest requestWithURL:url]];

}

*/



//开始加载数据
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
}


//数据加载完
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSDictionary *dic1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Renren",@"name",@"33.1",@"value",@"#b5bcc5",@"color", nil];
    NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Facebook",@"name",@"19.14",@"value",@"#b5bcc5",@"color", nil];
    NSDictionary *dic3 = [NSDictionary dictionaryWithObjectsAndKeys:@"StumbleUpon",@"name",@"13.97",@"value",@"#b5bcc5",@"color", nil];
    NSDictionary *dic4 = [NSDictionary dictionaryWithObjectsAndKeys:@"reddit",@"name",@"7.44",@"value",@"#b5bcc5",@"color", nil];
    NSDictionary *dic5 = [NSDictionary dictionaryWithObjectsAndKeys:@"IE",@"name",@"19.97",@"value",@"#b5bcc5",@"color", nil];
    NSDictionary *dic6 = [NSDictionary dictionaryWithObjectsAndKeys:@"qq",@"name",@"70.44",@"value",@"#b5bcc5",@"color", nil];
    
    
    NSArray *array = [NSArray arrayWithObjects:dic1,dic2,dic3,dic4,dic5,dic6, nil];
    
    [self.jsBridge postNotificationName:@"test" userInfo:[NSDictionary dictionaryWithObjectsAndKeys:array,@"message", nil] toWebView:webView];
    
    
}


- (void)jsBridge:(TGJSBridge *)bridge didReceivedNotificationName:(NSString *)name userInfo:(NSDictionary *)userInfo fromWebView:(UIWebView *)webview
{
    NSLog(@"name = %@",name);
    
//    [self.btn setTitle:[userInfo objectForKey:@"message"] forState:UIControlStateNormal];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
