//
//  SecondViewController.h
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventController.h"

@interface SecondViewController : UIViewController <AddEventDelegate>

{
    NSString *nameDelegate;
    NSString *ideaDelegate;
    NSString *dateDelegate;
    NSArray *itemArray;
    
    NSUserDefaults *defaults;
    
}

-(IBAction)onShare:(UIButton*)button;

@property (weak, nonatomic)IBOutlet UILabel *nameLabel;
@property (weak, nonatomic)IBOutlet UILabel *ideaLabel;
@property (weak, nonatomic)IBOutlet UILabel *dateLabel;

@end