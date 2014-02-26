//
//  ViewController.m
//  quadro
//
//  Created by Виталий Шатилов on 25.02.14.
//  Copyright (c) 2014 Виталий Шатилов. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)Button:(id)sender {
    double aField = [_a.text doubleValue];
    double bField = [_b.text doubleValue];
    double cField = [_c.text doubleValue];
    if (aField == 0 && bField == 0 && cField == 0) {}
    else {
    int discriminant = bField * bField - 4 * aField * cField;
    NSString * D = [[NSString alloc] initWithFormat:@"Дискриминант: %d", discriminant];
    [_D setText: D];
    if (discriminant > 0) {
        int x1 = (-bField + sqrt(discriminant)) / 2 * aField;
        int x2 = (-bField - sqrt(discriminant)) / 2 * aField;
        NSString * x1Label = [[NSString alloc] initWithFormat:@"x1: %d", x1];
        [_x1 setText: x1Label];
        NSString * x2Label = [[NSString alloc] initWithFormat:@"x2: %d", x2];
        [_x2 setText: x2Label];
    }
    else if (discriminant == 0) {
        int x = (-bField + sqrt(discriminant)) / 2 * aField;
        NSString * xLabel = [[NSString alloc] initWithFormat:@"x: %d", x];
        [_x1 setText: xLabel];
    
    }
    else
    {
        int x1 = -bField / 2 * aField;
        int x1Complex = sqrt(-1 * discriminant) / 2 * aField;
        int x2 = -1 * bField / 2 * aField;
        int x2Complex = sqrt(-1 * discriminant) / 2 * aField;
        NSString * x1Label = [[NSString alloc] initWithFormat:@"x1: %d-%di", x1, x1Complex];
        [_x1 setText: x1Label];
        NSString * x2Label = [[NSString alloc] initWithFormat:@"x2: %d+%di", x2, x2Complex];
        [_x2 setText: x2Label];}

    }}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_a resignFirstResponder];
    [_b resignFirstResponder];
    [_c resignFirstResponder];
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
