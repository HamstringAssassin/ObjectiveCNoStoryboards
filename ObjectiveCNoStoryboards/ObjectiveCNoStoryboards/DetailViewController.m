//
//  DetailViewController.m
//  ObjectiveCNoStoryboards
//
//  Created by O'Connor, Alan on 03/05/2016.
//  Copyright © 2016 Alan O'Connor. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailTitleLabel;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = self.detailTitle;
	self.detailTitleLabel.text = self.detailTitle;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
