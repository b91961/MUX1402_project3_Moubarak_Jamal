//
//  SecondViewController.m
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "SecondViewController.h"
#import "AddEventController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"compose"])
    {
        AddEventController *addEventController = segue.destinationViewController;
        addEventController.delegate = self;
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
        nameDelegate = [defaults objectForKey:@"savedName"];
        ideaDelegate = [defaults objectForKey:@"savedIdea"];
        dateDelegate = [defaults objectForKey:@"savedDate"];
        
        if (nameDelegate != nil)
        {
            _nameLabel.text = nameDelegate;
            _ideaLabel.text = ideaDelegate;
            _dateLabel.text = dateDelegate;
        }else
        {
            _nameLabel.text = @"Social Network";
            _ideaLabel.text = @"Your post idea";
            _dateLabel.text = @"Post on this Date";
        }
    }
    
    itemArray = [[NSMutableArray alloc] initWithObjects:
                 _nameLabel.text,
                 nameDelegate,
                 _ideaLabel.text,
                 ideaDelegate,
                 _dateLabel.text,
                 dateDelegate,
                 nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onShare:(UIButton*)button
{
    if (button.tag == 0)
    {
        //share
        UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:itemArray applicationActivities:nil];
        [self presentViewController:controller animated:YES completion:nil];
    }
}

-(void)DidCloseWith:(AddEventController *)controller name:(NSString *)nameText idea:(NSString *)ideaText date:(NSString *)dateText
{
    [controller dismissViewControllerAnimated:YES completion:nil];
    // Get selectable data from AddEventController
    self.nameLabel.text = nameText;
    self.ideaLabel.text = ideaText;
    self.dateLabel.text = dateText;
    
    defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        nameDelegate = _nameLabel.text;
        ideaDelegate = _ideaLabel.text;
        dateDelegate = _dateLabel.text;
        
        [defaults setObject:nameDelegate forKey:@"savedName"];
        [defaults setObject:ideaDelegate forKey:@"savedIdea"];
        [defaults setObject:dateDelegate forKey:@"savedDate"];
        
        [defaults synchronize];
    }
}

-(IBAction)done:(UIStoryboardSegue*)segue
{
    
}

@end