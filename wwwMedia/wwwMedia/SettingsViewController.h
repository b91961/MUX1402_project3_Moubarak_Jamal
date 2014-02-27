//
//  SettingsViewController.h
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/27/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SettingsViewController;
@protocol SettingsDelegate <NSObject>

@required
-(void)DidCloseWith:(SettingsViewController *)controller facebook:(NSString *)facebookText google:(NSString *)googleText twitter:(NSString *)twitterText instagram:(NSString *)instagramText linkedin:(NSString *)linkedinText youtube:(NSString *)youtubeText;

@end

@interface SettingsViewController : UIViewController <UITextFieldDelegate>
{
    NSString *facebookText;
    NSString *googleText;
    NSString *twitterText;
    NSString *instagramText;
    NSString *linkedinText;
    NSString *youtubeText;
    NSString *facebook;
    NSString *google;
    NSString *twitter;
    NSString *instagram;
    NSString *linkedin;
    NSString *youtube;
    IBOutlet UIButton *keyboardButton;
    IBOutlet UIButton *saveButton;
    IBOutlet UIButton *backButton;
    IBOutlet UITextField *facebookField;
    IBOutlet UITextField *googleField;
    IBOutlet UITextField *twitterField;
    IBOutlet UITextField *instagramField;
    IBOutlet UITextField *linkedinField;
    IBOutlet UITextField *youtubeField;
}

-(IBAction)onClose:(id)sender;
-(IBAction)onSave:(id)sender;
-(IBAction)onTouch:(id)sender;
-(IBAction)onEnd:(id)sender;
-(IBAction)onBack:(id)sender;

@property (strong) id<SettingsDelegate> delegate;

@end
