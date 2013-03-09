//
//  newsViewController.m
//  ABC
//
//  Created by Charles Konkol on 3/9/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "newsViewController.h"

@interface newsViewController ()

@end

@implementation newsViewController
@synthesize WebSite=WebSite;
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
	// Do any additional setup after loading the view.
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"news.html" ofType:nil]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [WebSite loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
    // Add code to load web content in UIWebView
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"news.html" ofType:nil]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [WebSite loadRequest:request];
}
@end
