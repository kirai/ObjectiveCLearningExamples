//
//  Connector.h
//  test
//
//  Created by Carlos Donderis on 12/05/24.
//  Copyright (c) 2012 Smalltalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Connector : NSObject{
    NSData *xmlData;
    NSXMLParser *parser;
}

- (void)startParsing;
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *) e;
@end
