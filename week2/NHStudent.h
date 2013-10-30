//
//  NHStudent.h
//  week2
//
//  Created by Ryan Johnson on 10/28/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NHStudent : NSObject

+ (NSArray *) allStudents;
+ (NHStudent*) randomStudent;

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * imageName;
@property (nonatomic, strong, readonly) UIImage * image;

@end
