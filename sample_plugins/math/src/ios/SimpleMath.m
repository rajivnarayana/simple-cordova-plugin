#import "SimpleMath.h"

@interface SimpleMath

- (void) add:(CDVInvokedUrlCommand*)command {
	NSString* callbackId = [command callbackId];
    NSString* number1 = [[command arguments] objectAtIndex:0];
    NSString* number2 = [[command arguments] objectAtIndex:1];
    int sum = [number1 intValue] + [number2 intValue];
	CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:sum];
	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) subtract:(CDVInvokedUrlCommand*)command {
	NSString* callbackId = [command callbackId];
    NSString* number1 = [[command arguments] objectAtIndex:0];
    NSString* number2 = [[command arguments] objectAtIndex:1];
    int sum = [number1 intValue] - [number2 intValue];
	CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:sum];
	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end