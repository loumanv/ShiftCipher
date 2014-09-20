//
//  ShiftCipherViewController.m
//  ShiftCipher
//
//  Created by Vasileios Loumanis on 27/10/2012.
//  Copyright Vasileios Loumanis. All rights reserved.
//

#import "ShiftCipherViewController.h"


@implementation ShiftCipherViewController

@synthesize originalMessage, codedMessage, cipherKeyLabel, model, cipherKeySlider;


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
	
	if(originalMessage == textField) {
		
        model.originalString = [NSMutableString stringWithString:textField.text];
		model.stateOfTheApp = @"encryptionMode";
		
    }  
	
	if(codedMessage == textField) {
		
        model.encryptedString = [NSMutableString stringWithString:textField.text];
		model.stateOfTheApp = @"decryptionMode";

    }
	
	[textField resignFirstResponder];
	[self update];
	return YES;
}


-(IBAction)sliderChanged:(UISlider*)sender {
	
	model.cipherKeyValue = sender.value;
	[self update];
}


-(void)update {
	
	[self.model encryptionAndDecryption];
	self.codedMessage.text = model.encryptedString;
	self.originalMessage.text = model.originalString;
	cipherKeyLabel.text = [NSString stringWithFormat:@"%d",model.cipherKeyValue];
}


- (void)viewDidLoad {
    
	[super viewDidLoad];
	self.model = [[ShiftCipherModel alloc]init];
}


- (void)dealloc {
    [super dealloc];
}

@end
