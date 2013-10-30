//
//  NHView.m
//  week2
//
//  Created by Ryan Johnson on 10/28/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import "NHView.h"

@implementation NHView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      NSLog(@"%s", __func__);
        // Initialization code
      [self commonInit];
    }
    return self;
}

- (void) awakeFromNib {
  [self commonInit];
}

- (void) commonInit {
  self.backgroundColor = [UIColor greenColor];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
