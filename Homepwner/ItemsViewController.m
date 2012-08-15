//
//  ItemsViewController.m
//  Homepwner
//
//  Created by Antonio Haley on 8/14/12.
//  Copyright (c) 2012 CBM of America. All rights reserved.
//

#import "ItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation ItemsViewController

- (id)init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[BNRItemStore sharedStore] createItem];
        }
    }
    return self;
}

- (int)tableView:(UITableView *)tableView
    numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]
                             initWithStyle:UITableViewCellStyleDefault 
                             reuseIdentifier:@"UITableViewCell"];
    
    BNRItem *item = [[[BNRItemStore sharedStore] allItems]
                     objectAtIndex:[indexPath row]];
    
    [[cell textLabel] setText:[item description]];
    
    return cell;
                      
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

@end
