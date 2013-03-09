//
//  ABCDataViewController.m
//  ABC
//
//  Created by Charles Konkol on 3/9/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "ABCDataViewController.h"

@interface ABCDataViewController ()

@end

@implementation ABCDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
