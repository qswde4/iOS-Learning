//
//  Student.h
//  Student
//
//  Created by qswde4 on 2022/07/18.
//

#ifndef Student_h
#define Student_h

#import <Foundation/Foundation.h>
#import "CoreLocation/CLLocation.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *major;
@property (nonatomic, assign) NSUInteger age;

@end

#endif
