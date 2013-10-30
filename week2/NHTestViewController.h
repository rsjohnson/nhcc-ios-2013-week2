//
//  NHTestViewController.h
//  week2
//
//  Created by Ryan Johnson on 10/28/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const NSTestViewControllerStoryboardIdentifier;

@interface NHTestViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton * ourButton;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *buttonsToStyle;

- (IBAction) doSomething:(id)sender;

@end
