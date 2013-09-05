// HelloThereViewController.m

#import "mmmViewController.h"

@implementation mmmViewController

- (void)viewDidLoad
{
	locationController = [[CLController alloc] init];
	locationController.delegate = self;
	//[locationController.locationManager startUpdatingLocation];
    //self.view.backgroundColor = [UIColor blueColor];
    //UIImageView *bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"iphoneback.jpg"]];
    //[self.view addSubview:bgView];
    
    /*
    self.view.backgroundColor = [UIColor blackColor];
    [image setHidden:YES];
    
    [cover1 setHidden:NO];
    [cover2 setHidden:NO];
    [cover3 setHidden:NO];
    [cover4 setHidden:NO];
     */
    
    caloriesLabel.text = @"350 Calories";
    [self resetImage];
}

- (void) resetImage
{
    self.view.backgroundColor = [UIColor blackColor];
    [image setHidden:YES];

    
    [cover1 setHidden:NO];
    [cover2 setHidden:NO];
    [cover3 setHidden:NO];
    [cover4 setHidden:NO];
    
    locationController.totalDistance = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning]; 
}

- (void)dealloc
{
	[locationController release];
    [startRun release];
    [image release];
    [distanceLabel release];
    [resetRun release];
    //[caloriesLabel release];
    [caloriesLabel release];
    [super dealloc];
}

- (void)locationUpdate:(CLLocation *)location
{
	locationLabel.text = [location description];
    distanceLabel.text = [NSString stringWithFormat:@"distance: %f", (locationController.totalDistance)/1000];
    //locationLabel.backgroundColor = [UIColor whiteColor];
    distanceLabel.backgroundColor = [UIColor whiteColor];
}

- (void)locationError:(NSError *)error {
	locationLabel.text = [error description];
}

- (IBAction)startRun:(id)sender
{
    [locationController.locationManager startUpdatingLocation];

}

- (IBAction)resetRun:(id)sender
{
    [self resetImage];
}

- (IBAction)stopRun:(id)sender
{
    [locationController.locationManager stopUpdatingLocation];
    distanceLabel.text = [NSString stringWithFormat:@"distance: %f", (locationController.totalDistance)/1000];
    
    [image setHidden:NO];
    
    
    if (locationController.totalDistance/1000 > 0)
    {
        [cover1 setHidden:YES];
    }
    
    if (locationController.totalDistance/1000 > 2)
    {
        [cover2 setHidden:YES];
    }
    
    
    if (locationController.totalDistance/1000 > 5)
    {
        [cover3 setHidden:YES];
    }
    
    if (locationController.totalDistance/1000 > 10)
    {
        [cover4 setHidden:YES];
    }

}

@end
