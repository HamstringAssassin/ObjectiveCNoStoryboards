//
//  ViewController.m
//  ObjectiveCNoStoryboards
//
//  Created by O'Connor, Alan on 03/05/2016.
//  Copyright © 2016 Alan O'Connor. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)didSelectTableViewButton:(UIButton *)sender {
	TableViewController *tableViewController = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:[NSBundle mainBundle]];
	[self.navigationController pushViewController:tableViewController animated:YES];
}

@end
