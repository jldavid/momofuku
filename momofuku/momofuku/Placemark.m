#import "PlaceMark.h"

@implementation PlaceMark
@synthesize coordinate;
@synthesize markTitle, markSubTitle;

-(id)initWithCoordinate:(CLLocationCoordinate2D)theCoordinate andMarkTitle:(NSString *)theMarkTitle andMarkSubTitle:(NSString *)theMarkSubTitle {
	coordinate = theCoordinate;
    markTitle = theMarkTitle;
    markSubTitle = theMarkSubTitle;
	return self;
}

- (NSString *)title {
    return markTitle;
}

- (NSString *)subtitle {
    return markSubTitle;
}

@end
