//
//  ShiftCipherViewController.h
//  ShiftCipher
//
//  Created by Vasileios Loumanis on 27/10/2012.
//  Copyright Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShiftCipherModel.h"


@interface ShiftCipherViewController : UIViewController <UITextFieldDelegate> 


@property (retain) IBOutlet UITextField *originalMessage;
@property (retain) IBOutlet UITextField *codedMessage;
@property (retain) IBOutlet UILabel *cipherKeyLabel;
@property (retain) IBOutlet UISlider *cipherKeySlider;
@property (retain) ShiftCipherModel *model;



-(IBAction)sliderChanged:(UISlider*)sender;

-(void)update;


@end

