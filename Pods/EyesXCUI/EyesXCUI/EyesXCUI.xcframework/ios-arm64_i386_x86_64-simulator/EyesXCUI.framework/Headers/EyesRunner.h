// Licensed under the Applitools SDK License, which can be found here: https://www.applitools.com/eula/sdk

#import <Foundation/Foundation.h>

@class TestResultsSummary, TestResults;

NS_ASSUME_NONNULL_BEGIN

/**
 Use ClassicRunner class instead please.
 */
@interface EyesRunner : NSObject

- (TestResultsSummary *)getAllTestResults;
- (TestResultsSummary *)getAllTestResultsShouldThrowException:(BOOL)shouldThrowException;

@end

NS_ASSUME_NONNULL_END
