//
//  ViewController.m
//  stopwatchkaiteiban
//
//  Created by chikatokitamuro on 2016/01/09.
//  Copyright © 2016年 chikatokitamuro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *aImageView;
    UIButton *button1;
    UIButton *button2;
    NSInteger countNumber;
    
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    countNumber= 0;
    //countNumber2 = 5;
    [self setupBackground];
    [self setupButton];
}


-(void)setupBackground{
    aImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 350, 380)];
    aImageView.image = [UIImage imageNamed:@"cat0.png"];
    [self.view addSubview:aImageView];
}


-(void)setupButton{
    button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(0, 0, 120, 45);
    button1.center = CGPointMake(80, 500);
    [button1 setTitle:@"進む" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(changeImageUsingString1:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    
    button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(0, 0, 120, 45);
    button2.center = CGPointMake(240, 500);
    [button2 setTitle:@"戻る" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(changeImageUsingString2:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}


-(void)changeImageUsingString1:(id)sender{
    countNumber++;
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"cat%ld.png",(long)countNumber]];
    if (countNumber==5) {
        countNumber = 0;
    }
    
    
}

-(void)changeImageUsingString2:(id)sender{
    countNumber--;
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"cat%ld.png",(long)countNumber]];
    if (countNumber==0) {
        countNumber = 6;
    }
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end


