//
//  DetailViewController.m
//  Homepwner
//
//  Created by Antonio Haley on 9/3/12.
//  Copyright (c) 2012 CBM of America. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    [dateLabel setText:@"It's a trap!"];
    
}

- (void)viewDidUnload {
    nameField = nil;
    serialField = nil;
    valueField = nil;
    dateLabel = nil;
    [super viewDidUnload];
}
@end
