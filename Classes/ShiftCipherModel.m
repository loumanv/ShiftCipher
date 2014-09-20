//
//  ShiftCipherModel.m
//  ShiftCipher
//
//  Created by Vasileios Loumanis on 27/10/2012.
//  Copyright Vasileios Loumanis. All rights reserved.
//

#import "ShiftCipherModel.h"


@implementation ShiftCipherModel


@synthesize originalString, encryptedString, stateOfTheApp, cipherKeyValue ;


-(id)init {
	self = [super init];
	if (self) {
		self.originalString = [NSMutableString stringWithString:@""];
		self.encryptedString = [NSMutableString stringWithString:@""];
		self.stateOfTheApp = @"";
		self.cipherKeyValue = 0;
	}
	return self;
}


-(void)encryptionAndDecryption{
	
	if ([stateOfTheApp  isEqual: @"encryptionMode"]) {
		
		self.encryptedString = [NSMutableString stringWithString:@""];

		for (int i=0; i<originalString.length; i++) {
			
			char characterFromIndex = [originalString characterAtIndex:i];
			
			if (characterFromIndex==' ') {
				
				[encryptedString appendString:@" "];
			
			} else {

				int asciiValueOfCharacter = (int)characterFromIndex;
				asciiValueOfCharacter = asciiValueOfCharacter - 97; //To make sure that the range of letters are numbered 0..25
				asciiValueOfCharacter = (asciiValueOfCharacter + cipherKeyValue) % 26; //E(x)=(x+k) mod 26
				asciiValueOfCharacter = asciiValueOfCharacter + 97; //After the shift, we reverse the character back 
				characterFromIndex = asciiValueOfCharacter;
				[encryptedString appendString:[NSString stringWithFormat:@"%c", characterFromIndex]];
			}
		}
	}
	
	
	
	if ([stateOfTheApp  isEqual: @"decryptionMode"]) {
		
		self.originalString = [NSMutableString stringWithString:@""];
		
		for (int i=0; i<encryptedString.length; i++) {
						
			char characterFromIndex = [encryptedString characterAtIndex:i];
			
			if (characterFromIndex==' ') {
				
				[originalString appendString:@" "];
				
			} else {
				
				int asciiValueOfCharacter = (int)characterFromIndex;
				asciiValueOfCharacter = asciiValueOfCharacter - 122; //To make sure that the range of letters are numbered 0..25
				asciiValueOfCharacter = (asciiValueOfCharacter - cipherKeyValue) % 26; //E(x)=(x-k) mod 26
				asciiValueOfCharacter = asciiValueOfCharacter + 122; //After the shift, we reverse the character back
				characterFromIndex = asciiValueOfCharacter;
				[originalString appendString:[NSString stringWithFormat:@"%c", characterFromIndex]];
			}
		}
	}
}


-(void)dealloc {
	[super dealloc];
}


@end