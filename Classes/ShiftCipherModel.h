//
//  ShiftCipherModel.h
//  ShiftCipher
//
//  Created by Vasileios Loumanis on 27/10/2012.
//  Copyright Vasileios Loumanis. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ShiftCipherModel : NSObject 


@property (retain) NSMutableString *originalString;
@property (retain) NSMutableString *encryptedString;
@property (retain) NSString *stateOfTheApp;
@property (assign) int cipherKeyValue;


-(void)encryptionAndDecryption;


@end
