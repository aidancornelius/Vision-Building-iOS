//
//  ViewController.m
//  app
//
//  Created by Aidan Cornelius-Bell on 8/12/11.
//  Copyright (c) 2011 Beaconsfield IT. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize wView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // wView Stuff { 
    
    NSString *urlAddress = @"http://genleadership.com/mobile/visionbuilding/"; //verifynano.php?ver?l=240
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [wView loadRequest:requestObj];
    
    NSString * jsCallBack = @"window.getSelection().removeAllRanges();";    
    [wView stringByEvaluatingJavaScriptFromString:jsCallBack];
    
    // }
    
    // UI Setup {
    
    [[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleDefault];
    [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
    
    // }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
