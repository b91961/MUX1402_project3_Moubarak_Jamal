//
//  DetailViewController.h
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialCustomClass.h"
@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *navName;
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *secondaryLabel;
    IBOutlet UILabel *information2Label;
    IBOutlet UILabel *information3Label;
    IBOutlet UIImageView *imageLabel;
    IBOutlet UIButton *webBack;
    IBOutlet UIButton *webForward;
    BOOL webOpen;
    UIWebView *webView;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onBack:(id)sender;
-(IBAction)onForward:(id)sender;

@property (nonatomic, strong)SocialCustomClass *currentSocial;
@end