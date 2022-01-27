// Licensed under the Applitools SDK License, which can be found here: https://www.applitools.com/eula/sdk

#import <Foundation/Foundation.h>

@interface RunningSession : NSObject

@property (readonly, nonatomic) NSString *sessionId;
@property (readonly, nonatomic) NSString *url;
@property (assign, nonatomic) BOOL isNewSession;

- (instancetype)initWithSessionId:(NSString *)sessionId url:(NSString *)url;

@end
