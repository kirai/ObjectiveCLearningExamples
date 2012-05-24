//
//  main.m
//  test
//
//  Created by Carlos Donderis on 12/05/24.
//  Copyright (c) 2012 Smalltalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "deal.h"
#import "Connector.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        Deal *deal = [[Deal alloc] init];
        [deal createDeal:@"test name" :@"test price" :@"test address"];
        NSLog(@"The deal price is %@, the address is %@ and the name is %@", [deal price], 
                                                                             [deal address], 
                                                                             [deal name]);
        
        Connector *connector = [[Connector alloc] init];
        [connector startParsing];

    }
    return 0;
}

