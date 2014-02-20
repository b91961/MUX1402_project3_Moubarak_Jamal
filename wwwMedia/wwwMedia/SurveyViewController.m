//
//  SurveyViewController.m
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "SurveyViewController.h"

@interface SurveyViewController ()

@end

@implementation SurveyViewController

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
    [surveyWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.surveymonkey.com/s/W6QR5D8"]]];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


- (void) viewDidDisappear:(BOOL)animated
{
    // Clear all Cookies and cache
    //[[NSURLCache sharedURLCache] removeAllCachedResponses];
    //NSHTTPCookie *cookie;
    //NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    //for (cookie in [storage cookies])
    //{
    //    [storage deleteCookie:cookie];
    //}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
