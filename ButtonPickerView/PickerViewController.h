//
//  PickerViewController.h
//  ButtonPickerView
//
//  Created by Tyr on 3/29/13.
//  Copyright (c) 2013 _MyCompanyName_. All rights reserved.
//

#import <UIKit/UIKit.h>

#define _WIDTH 0
#define _HEIGHT 1

@interface PickerViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>{
    
    IBOutlet UIPickerView *ColourAndShadePicker;
    
    NSMutableArray *widthArray;
    NSMutableArray *heightArray;
}

@property (strong, nonatomic) IBOutlet UIView *pickerViewContainer;

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

- (IBAction)doneBtn:(id)sender;

@end
