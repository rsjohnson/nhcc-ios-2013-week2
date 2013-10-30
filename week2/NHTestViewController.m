//
//  NHTestViewController.m
//  week2
//
//  Created by Ryan Johnson on 10/28/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import "NHTestViewController.h"

NSString * const NSTestViewControllerStoryboardIdentifier = @"NHSecondStoryboardSegueIdentifier";

@interface NHTestViewController ()

@end

@implementation NHTestViewController

+ (NHTestViewController*) viewController {
  UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"SettingsStoryboard" bundle:nil];
  NHTestViewController * vc = [storyboard instantiateInitialViewController];
  return vc;
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
    [super viewDidLoad];
  [self.ourButton setTitle:@"Hello" forState:UIControlStateNormal];

  for (UIButton * aButton in self.buttonsToStyle) {
    aButton.tintColor = [UIColor yellowColor];
  }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue
                  sender:(id)sender {
  if ([segue.identifier isEqualToString:@"NHSecondStoryboardSegueIdentifier"]) {
    UIViewController * destination = segue.destinationViewController;
    destination.title = @"Second";
  }

  [super prepareForSegue:segue sender:sender];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) doSomething:(id)sender {
  NHTestViewController * vc = [NHTestViewController viewController];
  [self presentViewController:vc animated:YES completion:^{
    
  }];
}

@end
