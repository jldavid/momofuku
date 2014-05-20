#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>
- (IBAction)viewWebsite:(id)sender;
- (IBAction)callRestaurant:(id)sender;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@end
