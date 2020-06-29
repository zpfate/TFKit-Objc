//
//  ViewController.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2019/9/11.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

#import "ViewController.h"
#import "TFKit-Objc/TFKit-Objc.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView  *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [view tf_setCorners:UIRectCornerTopLeft radius:50];
    [self.view addSubview:view];
    
}


@end
