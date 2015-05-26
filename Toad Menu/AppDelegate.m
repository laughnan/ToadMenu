//
//  AppDelegate.m
//  Toad Menu
//
//  Created by Alex Laughnan on 5/24/15.
//  Copyright (c) 2015 Metal Toad. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong, nonatomic) NSStatusItem *statusItem;
@property (assign, nonatomic) BOOL darkModeOn;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    _statusItem.image = [NSImage imageNamed:@"toad_menu_icon.png"];
    [_statusItem setAction:@selector(itemClicked:)];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)itemClicked:(id)sender {
    NSAlert * alert = [NSAlert alertWithMessageText:@"Bat signal acknowledged" defaultButton:@"Alright!" alternateButton:nil otherButton:nil informativeTextWithFormat:@"NSStatusItem was clicked"];
    [alert runModal];
}

@end
