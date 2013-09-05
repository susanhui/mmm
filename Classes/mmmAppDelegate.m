//
//  mmmAppDelegate.m
//  mmm
//
//

#import "mmmAppDelegate.h"
#import "mmmViewController.h"

@implementation mmmAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    
    // this got rid of the "Applications are expected to have a root view controller at the end of application launch" error
    window.rootViewController = viewController;
}

- (void)dealloc
{
    [viewController release];
    [window release];
    [super dealloc];
}


@end
