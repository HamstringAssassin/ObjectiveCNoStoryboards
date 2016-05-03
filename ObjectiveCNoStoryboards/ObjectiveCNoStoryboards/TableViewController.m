//
//  TableViewController.m
//  ObjectiveCNoStoryboards
//
//  Created by O'Connor, Alan on 03/05/2016.
//  Copyright © 2016 Alan O'Connor. All rights reserved.
//

#import "TableViewController.h"
#import "DetailViewController.h"

@interface TableViewController ()
@property (strong, nonatomic) NSArray *names;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = @"TableViewController";
	self.names = @[@"Alice", @"Bob", @"Michael", @"Sinead", @"Lola"];
	[self setupReuseIdentifier];
}

- (void)setupReuseIdentifier {
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.names.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
	cell.textLabel.text = self.names[indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:[NSBundle mainBundle]];
	detailViewController.detailTitle = self.names[indexPath.row];
	[self.navigationController pushViewController:detailViewController animated:YES];
}

@end
