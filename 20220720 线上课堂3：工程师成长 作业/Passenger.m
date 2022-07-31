//
//  Passenger.m
//  College Demo
//
//  Created by qswde4 on 2022/7/22.
//

#import "Passenger.h"


@implementation Orders

@end

@interface Passenger()

@property (nonatomic, strong) NSDate *registerDate;
@property (nonatomic, strong) NSNumber *idNumber;

@end

@implementation Passenger

- (instancetype)initWithName:(NSString *)name address:(Address *)address birthday:(nonnull NSDate *)birthday{
    if (self = [super init]) {
        [self createPassengerWithName:name ddress:address birthday:birthday];
    }
    return self;
}

- (void)createPassengerWithName:(NSString *)name ddress:(Address *)address birthday:(nonnull NSDate *)birthday {
    
    self.name = name;
    self.address = address;
    self.birthday = birthday;
    self.registerDate = [NSDate date];
    
    [self fetchIDWithAddress:address birthday:birthday completion:^(NSNumber *number) {
        self.idNumber = number;
    }];
}

- (void)fetchIDWithAddress:(Address *)address birthday:(nonnull NSDate *)birthday completion:(void(^)(NSNumber *))completion {
    //NetWork
    if (completion) {
        completion(@(233333333333));
    }
}

- (NSInteger)age {
    NSDate *now = [NSDate date];
    return [now timeIntervalSince1970] - [self.birthday timeIntervalSince1970];
}

- (BOOL)isOver18 {
    if (self.age >= 18) {
        return YES;
    } else {
        return NO;
    }
}

- (void)book:(Orders *)newOrder {
    [self.preOrders addObject:newOrder];
}

- (void)check:(Orders *)oldOrder {
    [self.preOrders removeObject:oldOrder];
    [self.historyOrders addObject:oldOrder];
}

@end
