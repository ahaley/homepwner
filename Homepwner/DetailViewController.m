//
//  DetailViewController.m
//  Homepwner
//
//  Created by Antonio Haley on 9/3/12.
//  Copyright (c) 2012 CBM of America. All rights reserved.
//

#import "DetailViewController.h"
#import "BNRItem.h"


@implementation DetailViewController

@synthesize item;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    [dateLabel setText:@"It's a trap!"];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [nameField setText:[item itemName]];
    [serialField setText:[item serialNumber]];
    [valueField setText:[NSString stringWithFormat:@"%d", [item valueInDollars]]];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterNoStyle];
    [dateLabel setText:[formatter stringFromDate:[item dateCreated]]];
}

- (void)viewDidUnload {
    nameField = nil;
    serialField = nil;
    valueField = nil;
    dateLabel = nil;
    [super viewDidUnload];
}
@end
