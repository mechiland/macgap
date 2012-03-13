#import <Foundation/Foundation.h>

#import "WindowController.h"

@interface Window : NSObject{
    
}

@property (retain, nonatomic) WindowController *windowController;
@property (nonatomic, retain) WebView *webView;

- (id) initWithWebView:(WebView *)view;
- (id) open:(NSDictionary *)properties;
- (void) move:(NSDictionary *)properties;
- (void) resize:(NSDictionary *) properties;
- (NSString*) url;
- (void) close;

@end
