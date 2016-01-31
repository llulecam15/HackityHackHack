//
//  AlarmList.h
//  SnoozeULooze
//
//  Created by Maria Vizcaino on 1/30/16.
//  Copyright © 2016 Maria Vizcaino. All rights reserved.
//

#ifndef Header_h
#define Header_h


@interface Alarm : NSObject

+ (void) newAlarm:(NSString*)dateTime;

- (void) setPriority;

+ (void) printAlarm:(NSString*) dateTime;

- (void) editAlarm;

- (void) deleteAlarm;



@end

#endif /* Header_h */
