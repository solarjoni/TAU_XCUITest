// Licensed under the Applitools SDK License, which can be found here: https://www.applitools.com/eula/sdk

#import <Foundation/Foundation.h>

@class TestResults;

NS_ASSUME_NONNULL_BEGIN

@interface TestResultsSummary : NSObject

- (instancetype)initWithAllResults:(NSArray <TestResults *> *)allResults;
- (NSArray<TestResults *> *)getAllResults;
- (NSUInteger)size;

@end

NS_ASSUME_NONNULL_END
