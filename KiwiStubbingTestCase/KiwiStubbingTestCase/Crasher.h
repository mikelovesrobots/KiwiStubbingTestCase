@interface Crasher : NSObject
+ (instancetype)sharedInstance;
- (void)crash;
@end
