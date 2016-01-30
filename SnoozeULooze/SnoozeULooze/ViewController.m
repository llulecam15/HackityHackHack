//
//  ViewController.m
//  SnoozeULooze
//
//  Created by Maria Vizcaino on 1/29/16.
//  Copyright © 2016 Maria Vizcaino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    
    __weak IBOutlet UIDatePicker *datePickerView;
    __weak IBOutlet UILabel *displayAlarm;
    
    __weak IBOutlet UILabel *labelTest;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dateTimePicker.date = [NSDate date];
    
    [self->datePickerView addTarget:self action:@selector(changeDP:) forControlEvents:UIControlEventValueChanged];
    
    //self.alarmText.text = dateTime;
    
}

- (void)changeDP:(UIDatePicker *)datePicker {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"dd-MM-yyyy HH:mm"];
    NSString *dateString = [dateFormatter stringFromDate:datePicker.date];
    self->displayAlarm.text = dateString;
    self->labelTest.text = dateString;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
    //self.alarmText.text = [dateFormatter stringFromDate:dateTimePicker.date];
    //self.alarmText.text = (@"%s", dateTime);
    
    
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
