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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
