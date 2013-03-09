//
//  aboutViewController.m
//  ABC
//
//  Created by Charles Konkol on 3/9/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "aboutViewController.h"

@interface aboutViewController ()

@end

@implementation aboutViewController
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
    NSString *filePath = [[NSBundle mainBundle] pathForAuxiliaryExecutable:@"about.rtf"];
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:filePath];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:fileURL];
    [WebSite loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
    // Add code to load web content in UIWebView
    NSString *filePath = [[NSBundle mainBundle] pathForAuxiliaryExecutable:@"about.rtf"];
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:filePath];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:fileURL];
    [WebSite loadRequest:requestObj];
}
@end
