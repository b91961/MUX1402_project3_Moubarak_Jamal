//
//  HandlesViewController.h
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/27/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsViewController.h"

@interface HandlesViewController : UIViewController <SettingsDelegate>
{
    NSString *facebookDelegate;
    NSString *googleDelegate;
    NSString *twitterDelegate;
    NSString *instagramDelegate;
    NSString *linkedinDelegate;
    NSString *youtubeDelegate;
    NSArray *socialArray;
    
    NSUserDefaults *defaults;
    
}

-(IBAction)onSocialShare:(UIButton*)button;

@property (weak, nonatomic)IBOutlet UILabel *facebookLabel;
@property (weak, nonatomic)IBOutlet UILabel *googleLabel;
@property (weak, nonatomic)IBOutlet UILabel *twitterLabel;
@property (weak, nonatomic)IBOutlet UILabel *instagramLabel;
@property (weak, nonatomic)IBOutlet UILabel *linkedinLabel;
@property (weak, nonatomic)IBOutlet UILabel *youtubeLabel;

@end
