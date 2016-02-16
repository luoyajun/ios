//
//  ViewController.m
//  LearnCocoa
//
//  Created by administrator on 16/1/22.
//  Copyright (c) 2016年 com.dreamsoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *right;
@property (weak, nonatomic) IBOutlet UIButton *left;
@property (weak, nonatomic) IBOutlet UILabel *statusTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)buttonPressed:(id)sender {
    NSString * title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed ",title];
//    _statusTitle.text = plainText;
    
    /*文本样式*/
    //创建属性字符串的实例,因为要改变，所以创建可变的
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText];
    NSDictionary *attributes =
    @{
      NSFontAttributeName : [UIFont boldSystemFontOfSize:_statusTitle.font.pointSize]
      };
    NSRange nameRange = [plainText rangeOfString:title];
    [styledText setAttributes:attributes range:nameRange];
    _statusTitle.attributedText = styledText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
