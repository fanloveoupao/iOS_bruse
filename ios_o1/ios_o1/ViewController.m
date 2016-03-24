//
//  ViewController.m
//  ios_o1
//
//  Created by bruse on 16/1/20.
//  Copyright © 2016年 bruse. All rights reserved.
//
//助手编辑器,标准编译器
#import "ViewController.h"

@interface ViewController ()
//outlet是属性,Action是事件
@property (strong, nonatomic) IBOutlet UIButton *myButton;
@property(strong ,nonatomic)UIActionSheet *sheet;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sheet=[[UIActionSheet alloc]initWithTitle:@"好好学习" delegate:nil cancelButtonTitle:@"取消" destructiveButtonTitle:@"OK" otherButtonTitles:@"按钮1",@"按钮2", nil];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//多参数的优先级高于少参数的
- (IBAction)click:(id)sender {
    NSLog(@"按钮的点击事件");
    
    [self.sheet showInView:self.view];
}
- (IBAction)click2:(UIButton *)sender forEvent:(UIEvent *)event {
    NSLog(@"按钮响应两个事件");
}

@end
