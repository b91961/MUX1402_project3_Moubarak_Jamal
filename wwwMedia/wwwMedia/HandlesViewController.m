//
//  HandlesViewController.m
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/27/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "HandlesViewController.h"
#import "SettingsViewController.h"

@interface HandlesViewController ()

@end

@implementation HandlesViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"setHandles"])
    {
        SettingsViewController *settingsViewController = segue.destinationViewController;
        settingsViewController.delegate = self;
    }
}

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
    // Setup default text for labels
    defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil);
    {
        facebookDelegate = [defaults objectForKey:@"savedFacebook"];
        googleDelegate = [defaults objectForKey:@"savedGoogle"];
        twitterDelegate = [defaults objectForKey:@"savedTwitter"];
        instagramDelegate = [defaults objectForKey:@"savedInstagram"];
        linkedinDelegate = [defaults objectForKey:@"savedLinkedin"];
        youtubeDelegate = [defaults objectForKey:@"savedYoutube"];
        
        if (facebookDelegate != nil)
        {            
            _facebookLabel.text = facebookDelegate;
            _googleLabel.text = googleDelegate;
            _twitterLabel.text = twitterDelegate;
            _instagramLabel.text = instagramDelegate;
            _linkedinLabel.text = linkedinDelegate;
            _youtubeLabel.text = youtubeDelegate;
        }else
        {
            _facebookLabel.text = @"https://www.facebook.com/3wMediaMarketing";
            _googleLabel.text = @"https://plus.google.com/+3wmediamarketing";
            _twitterLabel.text = @"https://twitter.com/3wmediamktg";
            _instagramLabel.text = @"http://instagram.com/3wMediaMarketing";
            _linkedinLabel.text = @"http://www.linkedin.com/3wMediaMarketing";
            _youtubeLabel.text = @"https://www.youtube.com/3wMediaMarketing";
        }
    }
    
    socialArray = [[NSMutableArray alloc] initWithObjects:
                 _facebookLabel.text,
                 facebookDelegate,
                 _googleLabel.text,
                 googleDelegate,
                 _twitterLabel.text,
                 twitterDelegate,
                   _instagramLabel.text,
                   instagramDelegate,
                   _linkedinLabel.text,
                   linkedinDelegate,
                   _youtubeLabel.text,
                   youtubeDelegate,
                 nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSocialShare:(UIButton*)button
{
    if (button.tag == 0)
    {
        //share
        UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:socialArray applicationActivities:nil];
        [self presentViewController:controller animated:YES completion:nil];
    }
}

-(void)DidCloseWith:(SettingsViewController *)controller facebook:(NSString *)facebookText google:(NSString *)googleText twitter:(NSString *)twitterText instagram:(NSString *)instagramText linkedin:(NSString *)linkedinText youtube:(NSString *)youtubeText
{
    [controller dismissViewControllerAnimated:YES completion:nil];
    // Get selectable data from SettingsViewController
    NSString *myFacebook = [NSString stringWithFormat:@"https://www.facebook.com/%@", facebookText];
    NSString *myGoogle = [NSString stringWithFormat:@"https://plus.google.com/%@", googleText];
    NSString *myTwitter = [NSString stringWithFormat:@"https://twitter.com/%@", twitterText];
    NSString *myInstagram = [NSString stringWithFormat:@"http://instagram.com/%@", instagramText];
    NSString *myLinkedin = [NSString stringWithFormat:@"http://www.linkedin.com/%@", linkedinText];
    NSString *myYoutube = [NSString stringWithFormat:@"https://www.youtube.com/%@", youtubeText];
    
    self.facebookLabel.text = myFacebook;
    self.googleLabel.text = myGoogle;
    self.twitterLabel.text = myTwitter;
    self.instagramLabel.text = myInstagram;
    self.linkedinLabel.text = myLinkedin;
    self.youtubeLabel.text = myYoutube;
    
    defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        facebookDelegate = _facebookLabel.text;
        googleDelegate = _googleLabel.text;
        twitterDelegate = _twitterLabel.text;
        instagramDelegate = _instagramLabel.text;
        linkedinDelegate = _linkedinLabel.text;
        youtubeDelegate = _youtubeLabel.text;
        
        [defaults setObject:facebookDelegate forKey:@"savedFacebook"];
        [defaults setObject:googleDelegate forKey:@"savedGoogle"];
        [defaults setObject:twitterDelegate forKey:@"savedTwitter"];
        [defaults setObject:instagramDelegate forKey:@"savedInstagram"];
        [defaults setObject:linkedinDelegate forKey:@"savedLinkedin"];
        [defaults setObject:youtubeDelegate forKey:@"savedYoutube"];
        
        [defaults synchronize];
    }
}

-(IBAction)done:(UIStoryboardSegue*)segue
{
    
}

@end
