//
//  NHStudent.m
//  week2
//
//  Created by Ryan Johnson on 10/28/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import "NHStudent.h"

@implementation NHStudent

+ (NSArray *) allStudents {
  static NSMutableArray * allStudents;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    allStudents = [NSMutableArray array];
    NSString * plistPath = [[NSBundle mainBundle] pathForResource:@"students"
                                                           ofType:@"plist"];
    NSArray * studentDictionaries = [NSArray arrayWithContentsOfFile:plistPath];
    for (NSDictionary * studentDictionary in studentDictionaries) {
      NHStudent * aStudent = [[NHStudent alloc] init];
      [aStudent setValuesForKeysWithDictionary:studentDictionary];
      [allStudents addObject:aStudent];
    }
  });
  return allStudents;
}

+ (NHStudent*) randomStudent {
  NSArray * allStudents = [self allStudents];
  int index = arc4random_uniform(allStudents.count);
  return allStudents[index];
}

- (UIImage*) image {
  return [UIImage imageNamed:self.imageName];
}

@end
