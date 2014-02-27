//
//  SettingsViewController.m
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/27/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "SettingsViewController.h"
#import "HandlesViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibnameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibnameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        delegate = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)onTouch:(id)sender
{
    keyboardButton.hidden = NO;
}

-(IBAction)onEnd:(id)sender
{
    keyboardButton.hidden = YES;
}

//  Close keyboard button
-(IBAction)onClose:(id)sender
{
    [facebookField resignFirstResponder];
    [googleField resignFirstResponder];
    [twitterField resignFirstResponder];
    [instagramField resignFirstResponder];
    [linkedinField resignFirstResponder];
    [youtubeField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    //  Dispose of any resources that can be recreated.
}

-(IBAction)onSave:(id)sender
{
    // Save Event settings.
    UIBarButtonItem *saveIdea = (UIBarButtonItem*)sender;
    if (saveIdea != nil)
    {
        //  Error Alert if there is no text in the text field.
        
        facebookText = facebookField.text;
        facebook = [NSString stringWithFormat:@"%@", facebookText];
        googleText = googleField.text;
        google = [NSString stringWithFormat:@"%@", googleText];
        twitterText = twitterField.text;
        twitter = [NSString stringWithFormat:@"%@", twitterText];
        instagramText = instagramField.text;
        instagram = [NSString stringWithFormat:@"%@", instagramText];
        linkedinText = linkedinField.text;
        linkedin = [NSString stringWithFormat:@"%@", linkedinText];
        youtubeText = youtubeField.text;
        youtube = [NSString stringWithFormat:@"%@", youtubeText];
        
        // delegate that passes name, idea and date to ViewController
        [self.delegate DidCloseWith:self facebook:facebook google:google twitter:twitter instagram:instagram linkedin:linkedin youtube:youtube];
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
        
        
    }
}

// Unwind Button
-(IBAction)onBack:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
