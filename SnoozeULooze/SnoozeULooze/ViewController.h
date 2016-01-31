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

- (IBAction)SetAlarmButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *SECPage;
@property (strong, nonatomic) IBOutlet UIView *MainPage;
- (IBAction)MainPage:(id)sender;
- (IBAction)DoneButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIStackView *AlarmTimesStack;

@property (weak, nonatomic) IBOutlet UILabel *alarmText;


@end

