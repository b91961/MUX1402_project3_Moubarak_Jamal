//
//  AddEventController.h
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddEventController;
@protocol AddEventDelegate <NSObject>

@required
-(void)DidCloseWith:(AddEventController *)controller name:(NSString *)nameText idea:(NSString *)ideaText date:(NSString *)dateText;

@end

@interface AddEventController : UIViewController <UITextFieldDelegate>
{
    NSString *nameText;
    NSString *ideaText;
    NSString *dateText;
    NSString *name;
    NSString *postIdea;
    NSDate *datePicked;
    NSDateFormatter *dateFormat;
    IBOutlet UIButton *keyboardButton;
    IBOutlet UIButton *saveButton;
    IBOutlet UIButton *backButton;
    IBOutlet UITextField *nameField;
    IBOutlet UITextField *ideaField;
    IBOutlet UIDatePicker *datePicker;
}

-(IBAction)onClose:(id)sender;
-(IBAction)onPick:(id)sender;
-(IBAction)onSave:(id)sender;
-(IBAction)onTouch:(id)sender;
-(IBAction)onEnd:(id)sender;
-(IBAction)onBack:(id)sender;

@property (strong) id<AddEventDelegate> delegate;

@end
