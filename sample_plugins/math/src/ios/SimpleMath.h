#import <Cordova/CDV.h>

@interface SimpleMath : CDVPlugin

- (void) add:(CDVInvokedUrlCommand*)command;
- (void) subtract:(CDVInvokedUrlCommand*)command;

@end