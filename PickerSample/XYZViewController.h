//
//  XYZViewController.h
//  PickerSample
//
//  Created by Stefanos Bliatsios on 12/2/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic,strong) UIPickerView * pickerView;
@end
