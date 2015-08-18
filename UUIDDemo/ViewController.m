//
//  ViewController.m
//  UUIDDemo
//
//  Created by iShareme on 15/8/18.
//  Copyright (c) 2015年 iShareme. All rights reserved.
//

#import "ViewController.h"
#import "ISMUUID.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int a[3] = {1 , 2, 3};
    int b[4] = {1 , 2, 3, 4};
    
    for (int i = 0 ; i < 3; i++) {
        int temp1 = a[i];
        for (int j = 0; j < 4; j++) {
            int temp2 = b[j];
            if (temp1 == temp2) {
                NSLog(@"触发事件");
                
                //根据数的不同去触发不同的事件,switch也可以换成if条件语句
                switch (temp1) {
                    case 1:{
                        NSLog(@"%d", j);
                    }
                        break;
                    case 2:{
                         NSLog(@"%d", j);
                    }
                        break;
                    case 3:{
                         NSLog(@"%d", j);
                    }
                        break;
                    default:
                        break;
                }
            }
        }
    }
    
    
    NSString *uuid = [ISMUUID getUUID];
    NSLog(@"%@", uuid);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
