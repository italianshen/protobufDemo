//
//  ViewController.m
//  protobufDemo
//
//  Created by Danny on 2017/5/12.
//  Copyright © 2017年 Danny. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Person *person =[[Person alloc]init];
    person.id_p = 123;
    person.name = @"danny";
    person.email = @"747976478@qq.com";

    NSData *data =[person data];
    
    Person *p = [Person parseFromData:data error:nil];
    
    NSLog(@"===>%@",p);
    
    
    
}




@end
