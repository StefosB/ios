//
//  XYZViewController.m
//  PickerSample
//
//  Created by Stefanos Bliatsios on 12/2/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.pickerView=[[UIPickerView alloc]init];
    self.pickerView.dataSource=self;
    self.pickerView.delegate=self;
    self.pickerView.center=self.view.center;
    self.pickerView.showsSelectionIndicator=YES;
    [self.view addSubview:self.pickerView];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    if([pickerView isEqual:self.pickerView]) {
        return 1;
    }
    return 0;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if([pickerView isEqual:self.pickerView]) {
        return 10;
    }

    return 0;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if ([pickerView isEqual:self.pickerView ]){
        /* Row is zero-based and we want the first row (with index 0) to be rendered as Row 1, so we have to +1 every row index */ return [NSString stringWithFormat:@"Row %ld", (long)row + 1];
    }
    return nil;
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    NSLog(@"aa");
}


@end
