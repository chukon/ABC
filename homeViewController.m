//
//  homeViewController.m
//  ABC
//
//  Created by Charles Konkol on 3/9/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()

@end

@implementation homeViewController
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
    NSURL *url = [NSURL URLWithString:@"http://rockvalleycollege.edu/"];
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
    NSURL *url = [NSURL URLWithString:@"http://rockvalleycollege.edu/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [WebSite loadRequest:request];
}

@end
