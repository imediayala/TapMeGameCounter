//
//  ViewController.h
//  CounterGame
//
//  Created by Daniel Ayala on 15/12/2016.
//  Copyright © 2016 Daniel Ayala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>{
   
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
- (IBAction)buttonPressed:(id)sender;

@end

