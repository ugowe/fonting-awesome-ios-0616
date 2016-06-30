//
//  ViewController.m
//  FontingAwesome
//
//  Created by Ugowe on 6/29/16.
//  Copyright © 2016 Ugowe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *awesomeButton;
@property (nonatomic) BOOL buttonTapped;
@property (strong, nonatomic) CWStatusBarNotification *notification;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.buttonTapped = NO;
    self.notification = [CWStatusBarNotification new];
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:100];
    [starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor]];
    
    [self.awesomeButton setAttributedTitle:[starIcon attributedString] forState:UIControlStateNormal];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)awesomeButtonTapped:(id)sender {
    if (self.buttonTapped == NO) {
        FAKFontAwesome *checkIcon = [FAKFontAwesome checkIconWithSize:100];
        [checkIcon addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor]];
        [self.awesomeButton setAttributedTitle:[checkIcon attributedString] forState:UIControlStateNormal];
        self.buttonTapped = YES;
    } else {
        FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:100];
        [starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor]];
        [self.awesomeButton setAttributedTitle:[starIcon attributedString] forState:UIControlStateNormal];
        self.buttonTapped = NO;
    }
    
    [self.notification dismissNotification];
}

- (IBAction)awesomeButtonPressed:(id)sender {
    [self.notification displayNotificationWithMessage:@"Let go of me!!!" completion:nil];
    NSLog(@"I'm working");
}

@end
