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

- (id)init{
    alarmstk = [[NSMutableArray alloc]init];
    return self;
}

+ (void) newAlarm:(NSString*) dateTime{
    [self printAlarm:dateTime];
}

+ (void) printAlarm:(NSString*) dateTime{
   // NSLog( @"Set Alarm : %@", dateTime);
    
    [alarmstk addObject:dateTime];
    NSLog( @"alarm Stack : %@", alarmstk);
}

- (void) setPriority{
    
}

- (void) editAlarm{
    
}

- (void) deleteAlarm{
    
}

+ (NSMutableArray *) getStack{
    return alarmstk;
}


@end




