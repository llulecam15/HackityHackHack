//
//  ViewController.m
//  SnoozeULooze
//
//  Created by Maria Vizcaino on 1/29/16.
//  Copyright © 2016 Maria Vizcaino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dateTimePicker.date = [NSDate date];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)GoBackLoser:(id)sender {
    self.view = [self MainPage];
}

- (IBAction)MainPage:(id)sender {
    //self.view = [self SECPage];
}

- (IBAction)DoneButton:(id)sender {
    //self.view =[self MainPage];
}

- (IBAction)SetAlarmButton:(id)sender {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeZone = [NSTimeZone defaultTimeZone];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    
    NSString *dateTime = [dateFormatter stringFromDate: dateTimePicker.date];
    NSLog( @"Set Alarm : %@", dateTime);
    
    //[dateFormatter release];
}

- (void) alarmNotification:(NSDate *)date {
    
    UILocalNotification *noti = [[UILocalNotification alloc] init];
    
    //[noti release];
    noti.fireDate = date;
    noti.alertBody = @"GOOD MORROW";
    
    //[[UIApplication sharedApplication] scheduledLocalNotifications: noti];
    
}

@end
