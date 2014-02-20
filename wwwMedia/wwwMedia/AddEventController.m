//
//  AddEventController.m
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "AddEventController.h"
#import "SecondViewController.h"

@interface AddEventController ()

@end

@implementation AddEventController

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
    [nameField resignFirstResponder];
    [ideaField resignFirstResponder];
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
        
        nameText = nameField.text;
        name = [NSString stringWithFormat:@"%@", nameText];
        ideaText = ideaField.text;
        postIdea = [NSString stringWithFormat:@"%@", ideaText];
        
        // delegate that passes name, idea and date to ViewController
        [self.delegate DidCloseWith:self name:name idea:postIdea date:dateText];
        
        [self dismissViewControllerAnimated:TRUE completion:nil];
        
        
    }
}

// Unwind Button
-(IBAction)onBack:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}



//  Date Picker
-(IBAction)onPick:(id)sender
{
    datePicker = (UIDatePicker*)sender;
    if (datePicker != nil)
    {
        datePicker.minimumDate = [NSDate date];
        datePicked = [datePicker date];
        if(datePicked != nil)
        {
            // Format the date
            dateFormat = [[NSDateFormatter alloc]init];
            if (dateFormat != nil)
            {
                [dateFormat setDateFormat:@"MMMM dd, h:mm a"];
            }
            dateText = [dateFormat stringFromDate:datePicked];
        }
    }
}

@end