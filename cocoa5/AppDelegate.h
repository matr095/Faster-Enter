//
//  AppDelegate.h
//  cocoa5
//
//  Created by MatR on 21/11/2015.
//  Copyright © 2015 Mathieu Rossetto. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (weak) IBOutlet NSTextField *label;

@property (weak) IBOutlet NSProgressIndicator *bar;
@property (weak) IBOutlet NSTextField *editable;

@end

