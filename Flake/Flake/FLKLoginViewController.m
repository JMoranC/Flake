//
//  FLKLoginViewController.m
//  Flake
//
//  Created by Adrian Swanberg on 7/27/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import "FLKLoginViewController.h"
#import "FLKUser.h"

@interface FLKLoginViewController ()

@end

@implementation FLKLoginViewController

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
    
    FLKUser *user = [FLKUser newInManagedObjectContext:self.appDelegate.managedObjectContext];
    
    [user.managedObjectContext save:nil];
    
    NSLog(@"\n\n SUCCESSFULLY CREATED USER: %@\n\n", user);
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender
{

}

@end
