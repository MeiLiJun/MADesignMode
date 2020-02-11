//
//  MAStrategyModeController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/11.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAStrategyModeController.h"
#import "MACustomTextField.h"
#import "LetterTextFieldValidate.h"
#import "NumberTextFieldValidate.h"

@interface MAStrategyModeController ()<UITextFieldDelegate>

@property (nonatomic, strong)MACustomTextField *letterField;
@property (nonatomic, strong)MACustomTextField *numberField;

@end

@implementation MAStrategyModeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    self.view.backgroundColor = [UIColor whiteColor];

    
    self.letterField = [[MACustomTextField alloc] initWithFrame:CGRectMake(10, 100, 200, 30)];
    self.letterField.inputValidate = [LetterTextFieldValidate new];
    self.numberField = [[MACustomTextField alloc] initWithFrame:CGRectMake(10, 140, 200, 30)];
    self.numberField.inputValidate = [NumberTextFieldValidate new];
    
    
    self.letterField.backgroundColor = [UIColor orangeColor];
    self.letterField.placeholder = @"请输入字母";
    self.numberField.backgroundColor = [UIColor orangeColor];
    self.numberField.placeholder = @"请输入数字";
    self.letterField.delegate = self;
    self.numberField.delegate = self;
    [self.view addSubview:self.letterField];
    [self.view addSubview:self.numberField];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"验证" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(10, CGRectGetMaxY(self.numberField.frame) + 20, 80, 30);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
}

#pragma mark - TextField Delegate
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if ([textField isKindOfClass:[MACustomTextField class]]) {
        [(MACustomTextField *)textField validate];
    }
}

@end
