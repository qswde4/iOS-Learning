//
//  Passenger.h
//  College Demo
//
//  Created by qswde4 on 2022/7/22.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property (nonatomic, readonly) NSNumber *orderID;
@property (nonatomic, strong) NSDate *orderDate;
@property (nonatomic, strong) Person *passenger;
@property (nonatomic, copy) NSString *airline;
@property (nonatomic, copy) NSString *flight;
@property (nonatomic, copy) NSString *cabinClass;
@property (nonatomic, strong) Address *startAddress;
@property (nonatomic, strong) Address *endAddress;
@property (nonatomic, assign, readonly) float price;
@property (nonatomic, assign, readonly) float insurance;
@property (nonatomic, assign, readonly) float tax;

@end

@interface Passenger : Person

// @property 属性
// 是否年满 18 岁
@property (nonatomic, assign, readonly) BOOL isOver18;
// 历史订单 （数组）
@property (nonatomic, strong) NSMutableArray *historyOrders;
// 未出行订单 （数组）
@property (nonatomic, strong) NSMutableArray *preOrders;

- (instancetype)initWithName:(NSString *)name address:(Address *)address birthday:(NSDate *)birthday;

// Function 方法
// 去订票
- (void)book:(Orders *)newOrder;
// 去检票
- (void)check:(Orders *)oldOrder;

@end

NS_ASSUME_NONNULL_END
