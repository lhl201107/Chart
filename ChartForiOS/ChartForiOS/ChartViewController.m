//
//  ChartViewController.m
//  ChartForiOS
//
//  Created by kangmei_teach03 on 14-3-14.
//  Copyright (c) 2014年 kangmei_teach03. All rights reserved.
//

#import "ChartViewController.h"
#import "ViewController.h"



@interface ChartViewController ()

@end

@implementation ChartViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"图表" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(50, 200, 200, 40)];
    [btn setBackgroundColor:[UIColor blackColor]];
    [btn addTarget:self action:@selector(showChart:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    
}

-(void)showChart:(id)sender
{
    
    ViewController *tt = [[ViewController alloc]init];
    [self.navigationController pushViewController:tt animated:YES];

}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
