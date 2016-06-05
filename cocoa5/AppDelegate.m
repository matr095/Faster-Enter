//
//  AppDelegate.m
//  cocoa5
//
//  Created by MatR on 21/11/2015.
//  Copyright © 2015 Mathieu Rossetto. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
-(void) decrementeCompteur;
@property (weak) IBOutlet NSProgressIndicator *progress;
-(IBAction)barre:(id)sender;


@end

@implementation AppDelegate

int score = 0;
int compteur = 0;
NSString *stringRun = @"faster";

//

-(void) decrementeCompteur {
    
    compteur++;
    _progress.doubleValue = compteur;
    
    if(compteur<60) {
        [self performSelector:@selector(decrementeCompteur) withObject:nil afterDelay:1.0];
    }
    if(compteur == 60){
        NSColor *couleur = [NSColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
        _window.backgroundColor = couleur;
        _editable.enabled = NO;
    
        
    }
    
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    _window.title = @"Faster Enter";
    _bar.doubleValue = 10.0;
    _progress.maxValue = 60;
    _progress.doubleValue = compteur;
    [self performSelector:@selector(decrementeCompteur) withObject:nil afterDelay:1.0];
    
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (void)tests {
    
    NSLog(stringRun);
    
    NSString *MotEcrit = _editable.stringValue;
    NSLog(MotEcrit);
    

    BOOL equal = [MotEcrit isEqualToString:stringRun];
    
    if (equal == NO) {
        _label.stringValue = _editable.stringValue;
    }
    
    if (equal == YES) {
        _editable.stringValue = @"";
        score++;
        _label.stringValue = [@(score) stringValue];
    }
    
}

- (IBAction)enter:(NSTextField *)sender {
    
    [self tests];
    
    
}

- (IBAction)barre:(id)sender {
    _bar.minValue = 0;
    _bar.maxValue = 100;
    _bar.doubleValue = 1.0;
    [self decrementeCompteur];
}


@end
