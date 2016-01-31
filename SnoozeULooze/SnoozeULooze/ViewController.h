//
//  ViewController.h
//  SnoozeULooze
//
//  Created by Maria Vizcaino on 1/29/16.
//  Copyright © 2016 Maria Vizcaino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlarmList.h"


@interface ViewController : UIViewController {
    
    __weak IBOutlet UIDatePicker *dateTimePicker;
    
}

- (void)changeDP:(UIDatePicker *)datePicker;

- (void) alarmNotification: (NSDate *) date;



@property (weak, nonatomic) IBOutlet UILabel *PrioritySetting;

@property (strong, nonatomic) IBOutlet UIView *SECPage;
@property (strong, nonatomic) IBOutlet UIView *MainPage;
- (IBAction)MainPage:(id)sender;
- (IBAction)DoneButton:(id)sender;

- (IBAction)SetAlarmButton:(id)sender;
- (IBAction)SwitchBool:(UISwitch *)sender;

@property (weak, nonatomic) IBOutlet UILabel *alarmText;


@end

