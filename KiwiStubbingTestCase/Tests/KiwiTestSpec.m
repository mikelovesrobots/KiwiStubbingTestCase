#import "Kiwi.h"

SPEC_BEGIN(KiwiTestSpec)

describe(@"The framework", ^{
    it(@"should work", ^{
        [[theValue(YES) should] equal:theValue(YES)];
    });
});

SPEC_END