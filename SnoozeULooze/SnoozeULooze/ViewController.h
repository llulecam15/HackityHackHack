//
//  ViewController.h
//  SnoozeULooze
//
//  Created by Maria Vizcaino on 1/29/16.
//  Copyright © 2016 Maria Vizcaino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIView *SECPage;
@property (strong, nonatomic) IBOutlet UIView *MainPage;
- (IBAction)GoBackLoser:(id)sender;
- (IBAction)MainPage:(id)sender;
- (IBAction)DoneButton:(id)sender;

@end

