//
//  DetailViewController.h
//  Homepwner
//
//  Created by Antonio Haley on 9/3/12.
//  Copyright (c) 2012 CBM of America. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UITextField *serialField;
    __weak IBOutlet UITextField *valueField;
    __weak IBOutlet UILabel *dateLabel;
}
@end
