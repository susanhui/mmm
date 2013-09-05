//
//  mmmAppDelegate.h
//  mmm
//


#import <UIKit/UIKit.h>

@class mmmViewController;

@interface mmmAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    mmmViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet mmmViewController *viewController;

@end

