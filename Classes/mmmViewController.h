// HelloThereViewController.h

#import <UIKit/UIKit.h>
#import "CLController.h"

@interface mmmViewController : UIViewController <CLControllerDelegate> {
    CLController *locationController;

	IBOutlet UILabel *locationLabel;
    IBOutlet UILabel *distanceLabel;
    IBOutlet UIButton *startRun;
    IBOutlet UIButton *stopRun;
    IBOutlet UIButton *resetRun;
    
    IBOutlet UILabel *caloriesLabel;
    //IBOutlet UILabel *caloriesLabel;
    IBOutlet UIImageView *image;
    IBOutlet UIImageView *cover1;
    IBOutlet UIImageView *cover2;
    IBOutlet UIImageView *cover3;
    IBOutlet UIImageView *cover4;
}

- (void)locationUpdate:(CLLocation *)location; 
- (void)locationError:(NSError *)error;

@end