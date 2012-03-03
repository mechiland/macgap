//
//  AppDelegate.m
//  MacGap
//
//  Created by Alex MacCaw on 08/01/2012.
//  Copyright (c) 2012 Twitter. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize windowController;

- (void) applicationWillFinishLaunching:(NSNotification *)aNotification
{

    
}

-(BOOL)applicationShouldHandleReopen:(NSApplication*)application
                   hasVisibleWindows:(BOOL)visibleWindows{
    if(!visibleWindows){
        [self.windowController.window makeKeyAndOrderFront: nil];
    }
    return YES;
}

- (void) applicationDidFinishLaunching:(NSNotification *)aNotification { 
    NSSize size = [[NSScreen mainScreen] frame].size;

    CGFloat width = 350;
    CGFloat height = 600;
    
    CGFloat x = (size.width - width) / 2;
    CGFloat y = (size.height - width) /2;
    
    NSRect frame = NSMakeRect(x, y, width, height);
    self.windowController = [[WindowController alloc] initWithURL: kStartPage
                                                         andFrame:frame];
    [self.windowController showWindow: [NSApplication sharedApplication].delegate];
    self.windowController.contentView.webView.alphaValue = 1.0;
    self.windowController.contentView.alphaValue = 1.0;
    
    [self.windowController showWindow:self];
    NSSize minSize = NSMakeSize(320, 500);
    NSSize maxSize = NSMakeSize(800, 700);
    [self.windowController.window setMinSize:minSize];
    [self.windowController.window setMaxSize:maxSize];
}

@end
