//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Antonio Haley on 4/29/12.
//  Copyright (c) 2012 CBM of America. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

@synthesize itemName, serialNumber, valueInDollars, dateCreated;
@synthesize container, containedItem;

+ (id)randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                    @"Rusty",
                                    @"Shiney",
                                    nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                               @"Spork",
                               @"Mac",
                               nil];
    
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26
                                    ];
    
                            
    
    BNRItem *newItem =
        [[self alloc] initWithItemName:randomName
                        valueInDollars:randomValue
                          serialNumber:randomSerialNumber];
    return newItem;
}

- (id)init
{
    return [self initWithItemName:@"Item"
                    valueInDollars:0
                     serialNumber:@""];
}

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString*)sNumber
{
    self = [super init];
    if (self) {
        [self setItemName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc'ing %@", [self itemName]);
}

- (NSString *)description
{
    NSString *descriptionString =
        [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
            itemName,
         serialNumber,
         valueInDollars,
         dateCreated];
    return descriptionString;
}

- (void)setContainedItem:(BNRItem *)i
{
    containedItem = i;
    [containedItem setContainer:self];
}
@end
