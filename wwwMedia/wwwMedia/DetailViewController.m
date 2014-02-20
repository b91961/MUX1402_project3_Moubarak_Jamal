//
//  DetailViewController.m
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "DetailViewController.h"
#import "CustomCell.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    
    webOpen = false;
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    titleLabel.text = self.currentSocial.name;
    secondaryLabel.text = self.currentSocial.description;
    information2Label.text = self.currentSocial.description2;
    information3Label.text = self.currentSocial.description3;
    imageLabel.image = self.currentSocial.socialImage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onBack:(id)sender
{
    [webView goBack];
}

-(IBAction)onForward:(id)sender
{
    [webView goForward];
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        //button tag for webView button on iPhone
        if (button.tag == 1)
        {
            webView = [[UIWebView alloc] init];
            if(webView != nil)
            {
                //create webframe and load website from the information2Label string
                [webView setFrame:CGRectMake(0, 20.0f, 320.0f, 415.0f)];
                [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:information2Label.text]]];
                //webView.scrollView.layer.cornerRadius = 10;
                //webView.scrollView.layer.borderColor = [UIColor darkGrayColor].CGColor;
                //webView.scrollView.layer.borderWidth = 3.0f;
                webView.scalesPageToFit = YES;
                webView.tag = 3;
            }
            if (webOpen == false)
            {
                //open the webView and set button text to close
                webOpen = true;
                webBack.hidden = NO;
                webForward.hidden = NO;
                [sender setTitle:@"Close Web" forState:UIControlStateNormal];
                [[self view] addSubview:webView];
            }else if (webOpen == true)
            {
                //open the webView and set button text to open web
                [[self.view viewWithTag:3] removeFromSuperview];
                webOpen = false;
                webBack.hidden = YES;
                webForward.hidden = YES;
                [sender setTitle:@"Open Web" forState:UIControlStateNormal];
            }
            //button tag for webView button on iPad
        }else if (button.tag == 2)
        {
            webView = [[UIWebView alloc] init];
            if(webView != nil)
            {
                //create webframe and load website from the information2Label string
                [webView setFrame:CGRectMake(0, 65.0f, 768.0f, 685.0f)];
                [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:information2Label.text]]];
                webView.scrollView.layer.cornerRadius = 10;
                webView.scrollView.layer.borderColor = [UIColor darkGrayColor].CGColor;
                webView.scrollView.layer.borderWidth = 3.0f;
                webView.scalesPageToFit = YES;
                webView.scalesPageToFit = YES;
                webView.tag = 3;
            }
            if (webOpen == false)
            {
                //open the webView and set button text to close
                webOpen = true;
                webBack.hidden = NO;
                webForward.hidden = NO;
                [sender setTitle:@"Close Web" forState:UIControlStateNormal];
                [[self view] addSubview:webView];
            }else if (webOpen == true)
            {
                //open the webView and set button text to open web
                [[self.view viewWithTag:3] removeFromSuperview];
                webOpen = false;
                webBack.hidden = YES;
                webForward.hidden = YES;
                [sender setTitle:@"Open Web" forState:UIControlStateNormal];
            }
        }
    }
}

@end