//
//  PickerViewController.m
//  ButtonPickerView
//
//  Created by Tyr on 3/29/13.
//  Copyright (c) 2013 _MyCompanyName_. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

@synthesize outputLabel = _outputLabel;
@synthesize pickerViewContainer = _pickerViewContainer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    widthArray = [[NSMutableArray alloc] init];
    [widthArray addObject:@""];
    [widthArray addObject:@"640"];
    [widthArray addObject:@"800"];
    [widthArray addObject:@"1024"];
    
    heightArray = [[NSMutableArray alloc] init];
    [heightArray addObject:@""];
    [heightArray addObject:@"480"];
    [heightArray addObject:@"600"];
    [heightArray addObject:@"768"];
    
    self.pickerViewContainer.frame = CGRectMake(0, 460, 320, 261);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == _WIDTH)
        return [widthArray count];
    
    if (component == _HEIGHT)
        return [heightArray count];
    
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == _WIDTH)
        return [widthArray objectAtIndex:row];
    
    if (component == _HEIGHT)
        return [heightArray objectAtIndex:row];
    
    return 0;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSString *testingString = [widthArray objectAtIndex:[pickerView selectedRowInComponent:0]];
    NSString *testingString1 = [heightArray objectAtIndex:[pickerView selectedRowInComponent:1]];
    
    if (![testingString isEqualToString:@""]) {
        [self.outputLabel setText:[NSString stringWithFormat:@"You chose: %@", testingString]];
        //[pickerView selectRow:0 inComponent:1 animated:YES];
        //[pickerView selectRow:0 inComponent:2 animated:YES];
    }
    
    if (![testingString1 isEqualToString:@""]) {
        [self.outputLabel setText:[NSString stringWithFormat:@"You chose: %@", testingString1]];
        //[pickerView selectRow:0 inComponent:0 animated:YES];
        //[pickerView selectRow:0 inComponent:2 animated:YES];
    }
}


- (IBAction)showBtn:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    self.pickerViewContainer.frame = CGRectMake(0, 199, 320, 261);
    [UIView commitAnimations];
}


- (IBAction)hideBtn:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    self.pickerViewContainer.frame = CGRectMake(0, 460, 320, 261);
    [UIView commitAnimations];
}


- (IBAction)doneBtn:(id)sender {
    //self.URLLabel.text = [URLArray objectAtIndex:selectedRow];
    
    // close on button "Done" pressed
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    self.pickerViewContainer.frame = CGRectMake(0, 460, 320, 261);
}

- (void)viewDidUnload
{
    [self setPickerViewContainer:nil];
    [super viewDidUnload];
}

@end
