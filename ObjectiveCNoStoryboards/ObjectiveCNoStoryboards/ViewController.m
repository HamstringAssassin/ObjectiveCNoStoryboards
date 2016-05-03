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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didSelectTableViewButton:(UIButton *)sender {
	TableViewController *tableViewController = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:[NSBundle mainBundle]];
	[self.navigationController pushViewController:tableViewController animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
