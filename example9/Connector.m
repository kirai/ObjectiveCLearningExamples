
#import "Connector.h"

@implementation Connector

- (void)startParsing {
    NSURL *url = [NSURL URLWithString:@"http://api.kumapon.jp/deals/21427.xml"];   
    NSData *xmlData = [NSData dataWithContentsOfURL:url];
    NSXMLParser *parser = [[[NSXMLParser alloc] initWithData:xmlData] autorelease];
    [parser setDelegate:self];
    [parser parse];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *)attributeDict {
    NSLog(@"Started %@", elementName);
}

@end