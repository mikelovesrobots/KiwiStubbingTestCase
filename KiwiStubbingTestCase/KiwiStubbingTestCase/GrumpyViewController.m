#import "GrumpyViewController.h"
#import "Crasher.h"

@implementation GrumpyViewController

- (void)crash
{
    [[Crasher sharedInstance] crash];
}

@end
