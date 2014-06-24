//
//  DYAppDelegate.h
//  NSAlert-Demo
//
//  Created by danny on 2014/6/24.
//  Copyright (c) 2014年 danny. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DYAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)buttonShowDialog:(id)sender;
- (IBAction)buttonShowDialog1:(id)sender;
- (IBAction)buttonShowDialog2:(id)sender;

@end
