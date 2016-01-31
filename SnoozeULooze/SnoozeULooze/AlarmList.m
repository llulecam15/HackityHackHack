//
//  AlarmList.m
//  SnoozeULooze
//
//  Created by Maria Vizcaino on 1/30/16.
//  Copyright © 2016 Maria Vizcaino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlarmList.h"

@implementation Alarm

NSMutableArray *alarmstk;

// Initialize array
- (id)init{
    alarmstk = [[NSMutableArray alloc]init];
    return self;
}

// Create new alarm
+ (void) newAlarm:(NSString*) dateTime{
    [self printAlarm:dateTime];
}

// Print alarms in stack
+ (void) printAlarm:(NSString*) dateTime{
   // NSLog( @"Set Alarm : %@", dateTime);
    
    [alarmstk addObject:dateTime];
    NSLog( @"alarm Stack : %@", alarmstk);
}

// Set priority of alarm
- (void) setPriority{
    
}

// Edit alarms in stack
- (void) editAlarm{
    
}

// Delete alarm in stack
- (void) deleteAlarm{
    
}

// Return alarm data from stack
+ (NSMutableArray *) getStack{
    return alarmstk;
}


@end




