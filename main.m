//
//  main.m
//  mmm
//

#import <UIKit/UIKit.h>
#import "mmmAppDelegate.h"
int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    //int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([HelloThereAppDelegate class]));
    [pool release];
    return retVal;
}
