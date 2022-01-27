// Licensed under the Applitools SDK License, which can be found here: https://www.applitools.com/eula/sdk

#import "ConfigurationBase.h"
#import "Feature.h"

NS_ASSUME_NONNULL_BEGIN

@interface Configuration : ConfigurationBase

@property (assign, nonatomic) BOOL forceFullPageScreenshot;
@property (assign, nonatomic) BOOL statusBarExists API_AVAILABLE(ios(13));
@property (copy, nonatomic) NSArray<Feature *> *features;

- (instancetype)initWithConfiguration:(Configuration *)configuration;

@end

NS_ASSUME_NONNULL_END
