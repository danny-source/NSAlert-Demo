//
//  DYAppDelegate.m
//  NSAlert-Demo
//
//  Created by danny on 2014/6/24.
//  Copyright (c) 2014年 danny. All rights reserved.
//

#import "DYAppDelegate.h"

@implementation DYAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
}

//enum {
//    NSWarningAlertStyle = 0,
//    NSInformationalAlertStyle = 1,
//    NSCriticalAlertStyle = 2
//};

- (void)showDialog
{
    NSAlert *alert = [[NSAlert alloc] init];
    //右邊開始算起
    [alert addButtonWithTitle:@"2012"];//右一
    [alert addButtonWithTitle:@"2013"];//右二
    [alert addButtonWithTitle:@"2014"];//右三
    [alert addButtonWithTitle:@"2015"];//右四

    [alert setMessageText:@"選擇您的答案"];//標題
    [alert setInformativeText:@"現在的年份？"];//內容
    [alert setAlertStyle:NSCriticalAlertStyle];

    NSInteger choice = [alert runModal];
    NSLog(@"Dialog:%ld",(long)choice);
    
    if (choice == NSAlertFirstButtonReturn) {
        //右一按鍵要做的事
    }else if (choice == NSAlertSecondButtonReturn){
        //右二按鍵要做的事
    }
    

}


- (void)showDialog1
{
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"2012"];
    [alert addButtonWithTitle:@"2013"];
    [alert addButtonWithTitle:@"2014"];
    [alert addButtonWithTitle:@"2015"];
    
    [alert setMessageText:@"選擇您的答案"];
    [alert setInformativeText:@"現在的年份？"];
    [alert setAlertStyle:NSInformationalAlertStyle];
    //[self window] 取得上層視窗
    [alert beginSheetModalForWindow:[self window] modalDelegate:self didEndSelector:@selector(alertEnded:code:context:) contextInfo:nil];

    
    
}

-(void)alertEnded:(NSAlert *)alert code:(int)choice context:(void *)v{
    
    NSLog(@"Dialog1:%ld",(long)choice);
}


- (void)showDialog2
{
    //After 10.9
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"2012"];
    [alert addButtonWithTitle:@"2013"];
    [alert addButtonWithTitle:@"2014"];
    [alert addButtonWithTitle:@"2015"];
    
    [alert setMessageText:@"選擇您的答案"];
    [alert setInformativeText:@"現在的年份？"];
    [alert setAlertStyle:NSWarningAlertStyle];
    //[self window] 取得上層視窗
    [alert beginSheetModalForWindow:[self window] completionHandler:^(NSModalResponse returnCode) {
        NSLog(@"Dialog2:%ld",(long)returnCode);
    }];
    
}

- (IBAction)buttonShowDialog:(id)sender {
    [self showDialog];
}

- (IBAction)buttonShowDialog1:(id)sender {
    [self showDialog1];
}

- (IBAction)buttonShowDialog2:(id)sender {
    [self showDialog2];
}



@end
