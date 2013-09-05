#import "Kiwi.h"
#import "GrumpyViewController.h"
#import "Crasher.h"

SPEC_BEGIN(GrumpyViewControllerSpec)

describe(@"GrumpyViewController", ^{
    beforeEach(^{
        Crasher *crasher = [Crasher nullMock];
        [[Crasher stubAndReturn:crasher] sharedInstance];
    });
    
    context(@"when created from a storyboard", ^{
        __block GrumpyViewController *viewController;
        
        beforeEach(^{
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:[NSBundle mainBundle]];
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"GrumpyViewController"];
        });
        
        it(@"stubbed class methods, should be stubbed", ^{
            [[theBlock(^{
                [viewController crash];
            }) shouldNot] raise];
        });
    });
    
    context(@"when created programatically", ^{
        __block GrumpyViewController *viewController;
        
        beforeEach(^{
            viewController = [GrumpyViewController new];
        });
        
        it(@"stubbed class methods, should be stubbed", ^{
            [[theBlock(^{
                [viewController crash];
            }) shouldNot] raise];
        });
    });
    
    context(@"when created from a nib", ^{
        __block GrumpyViewController *viewController;
        
        beforeEach(^{
            viewController = [[GrumpyViewController alloc] initWithNibName:@"GrumpyViewController" bundle:[NSBundle mainBundle]];
        });
        
        it(@"stubbed class methods, should be stubbed", ^{
            [[theBlock(^{
                [viewController crash];
            }) shouldNot] raise];
        });
    });
});

SPEC_END