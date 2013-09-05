#import "Crasher.h"

@implementation Crasher
+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    static Crasher *instance;
    dispatch_once(&onceToken, ^{ instance = [Crasher new]; });
    return instance;
}

- (void)crash
{
    [NSException raise:@"KABOOM!" format:nil];
}

@end
