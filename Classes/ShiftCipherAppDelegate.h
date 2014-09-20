//
//  ShiftCipherAppDelegate.h
//  ShiftCipher
//
//  Created by Vasileios Loumanis on 27/10/2012.
//  Copyright Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ShiftCipherViewController;

@interface ShiftCipherAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ShiftCipherViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ShiftCipherViewController *viewController;

@end

