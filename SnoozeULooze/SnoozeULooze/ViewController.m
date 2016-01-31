//
//  ViewController.m
//  SnoozeULooze
//
//  Created by Maria Vizcaino on 1/29/16.
//  Copyright © 2016 Maria Vizcaino. All rights reserved.
//

#import "ViewController.h"
#import "AlarmList.h"

@interface ViewController () {
    
    __weak IBOutlet UIDatePicker *datePickerView;
    
    __weak IBOutlet UILabel *displayAlarm;
    __weak IBOutlet UILabel *_alarmStk;
    __weak IBOutlet UILabel *labelTest;
    
    //__weak IBOutlet UILabel *PrioritySetting;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dateTimePicker.date = [NSDate date];
    
    // Update date and time
    [self->datePickerView addTarget:self action:@selector(changeDP:) forControlEvents:UIControlEventValueChanged];
    
    //[self SetAlarmButton:<#(id)#>sender];
    
    //self.alarmText.text = dateTime;
    
}

- (void)changeDP:(UIDatePicker *)datePicker {
    
    // Get date and time
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"dd-MM-yyyy HH:mm"];
    
    // Create date and time string
    NSString *dateString = [dateFormatter stringFromDate:datePicker.date];
    //self->displayAlarm.text = @"hhelllooo"; //dateString;
    self->labelTest.text = dateString;        //Displays Date&Time on label
    //self->PrioritySetting.text = @"Make Priority";
    
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
    Alarm *alarm;                              // Create alarm object
    
    alarm = [[Alarm alloc] init];              // Initialize alarm
    
    
    // Format date and time
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeZone = [NSTimeZone defaultTimeZone];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    
    // Create date and time string
    NSString *dateTime = [dateFormatter stringFromDate: dateTimePicker.date];
    //NSLog( @"Set Alarm Button Was Pressed : %@", dateTime);
    
    [Alarm newAlarm:dateTime];                  // Pass string to alarm object
    
    
    //self.alarmText.text = [dateFormatter stringFromDate:dateTimePicker.date];
    //self.alarmText.text = (@"%s", dateTime);
    NSMutableArray * stk = [Alarm getStack];    // Create alarm stack
    
    int numElem = [stk count];
    
    
    // Set text to date and time in alarm stack
    self.alarmStk.text = dateTime;
    //[dateFormatter release];
}

// Switch for alarm priority
- (IBAction)SwitchBool:(UISwitch *)sender {
}

// Create notification when alarm goes off
- (void) alarmNotification:(NSDate *)date {
    
    UILocalNotification *noti = [[UILocalNotification alloc] init];
    
    //[noti release];
    noti.fireDate = date;
    noti.alertBody = @"GOOD MORROW";
    
    //[[UIApplication sharedApplication] scheduledLocalNotifications: noti];
    
}

@end
