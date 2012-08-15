//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Antonio Haley on 8/14/12.
//  Copyright (c) 2012 CBM of America. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

- (id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

+ (BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if (sharedStore == nil)
        sharedStore = [[super allocWithZone:nil] init];
    return sharedStore;
}

- (NSArray *)allItems
{
    return allItems;
}

- (BNRItem *)createItem
{
    BNRItem *newItem = [BNRItem randomItem];
    [allItems addObject:newItem];
    return newItem;
}

@end
