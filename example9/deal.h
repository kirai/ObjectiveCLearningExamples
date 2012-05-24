//
//  deal.h
//  test
//
//  Created by Carlos Donderis on 12/05/24.
//  Copyright (c) 2012 Smalltalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deal : NSObject

@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) NSString* price;
@property (nonatomic, retain) NSString* address;

-(void)createDeal: (NSString*) n: (NSString*) p: (NSString*) a;

@end
