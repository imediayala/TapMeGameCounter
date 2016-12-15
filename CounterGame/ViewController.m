//
//  ViewController.m
//  CounterGame
//
//  Created by Daniel Ayala on 15/12/2016.
//  Copyright © 2016 Daniel Ayala. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setUpGame];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setUpGame{
    
    //1
    seconds = 30;
    count = 0;
    
    //2
    _timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    _scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
    
    //3
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
}

-(void)subtractTime{
    
    //1
    seconds--;
    _timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    
    //2
    if (seconds == 0) {
        [timer invalidate];
        
        
        //Alert View
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                             message:[NSString stringWithFormat:@"You scored %i points", count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:nil];
        
        [alert show];
        
        
    
    }

}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    [self setUpGame];
}



- (IBAction)buttonPressed:(id)sender {
    
    [_scoreLabel setTextColor: [UIColor blueColor]];
    
    count++;
    
    NSLog([NSString stringWithFormat:@"Button Pressed%i times", count]);

    _scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];


}
@end
