//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Antonio Haley on 8/14/12.
//  Copyright (c) 2012 CBM of America. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}

+ (BNRItemStore*)sharedStore;

- (NSArray *)allItems;
- (BNRItem *)createItem;
- (void)removeItem:(BNRItem *)item;

- (void)moveItemAtIndex:(int)from
                toIndex:(int)to;



@end
