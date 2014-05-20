#import "ViewController.h"
#import "Placemark.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CLLocationCoordinate2D coord = { .latitude = 43.649369, .longitude = -79.385922};
    MKCoordinateRegion region;
    region.center = coord;
    [_mapView setRegion:region];
    
    PlaceMark *placeMark = [[PlaceMark alloc]
                            initWithCoordinate:coord
                            andMarkTitle:@"Momofuku"
                            andMarkSubTitle:@"Ramen"];
    
    [_mapView addAnnotation:placeMark];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)viewWebsite:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.momofuku.com"]];
}

- (IBAction)callRestaurant:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:4161111111"]];
}
@end
