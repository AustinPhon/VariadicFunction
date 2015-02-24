//
//  ViewController.m
//  VariadicFunction
//
//  Created by Mobile C&C on 2/23/15.
//  Copyright (c) 2015 XcodeBeginner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int totalSum = [self addValues:1,2,3,4,5,nil];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Message" message:[NSString stringWithFormat:@"The total number is %d",totalSum] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)addValues:(int)num, ...{
    
    int eachObject;
    int sum=0;
    va_list argumentList;
    
    if (num)
    {
        va_start(argumentList, num);
        sum+=num;
        while ((eachObject = va_arg(argumentList, int)))
        {
            sum+=eachObject;
        }
        va_end(argumentList);
    }
    return sum;
}

@end
