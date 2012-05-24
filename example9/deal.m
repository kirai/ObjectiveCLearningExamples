//
//  deal.m
//  test
//
//  Created by Carlos Donderis on 12/05/24.
//  Copyright (c) 2012 Smalltalk. All rights reserved.
//

#import "deal.h"

@implementation Deal

@synthesize name;
@synthesize price;
@synthesize address;

-(void)createDeal: (NSString*) n: (NSString*) p: (NSString*) a{
    name = n;
    price = p;
    address = a;
}

@end
