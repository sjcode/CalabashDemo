//
//  ViewController.m
//  CalabashDemo
//
//  Created by sujian on 15/01/2018.
//  Copyright © 2018 sujian. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "UIColor+Random.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *list;
@end

static NSString * const reuseCellIndentifier = @"reuseCellIndentifier";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.list = [[NSMutableArray alloc]init];
    for (int i = 0; i < 100; i++) {
        [self.list addObject:@{@"number": @(i), @"color": [UIColor RandomColor]}];
    }
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseCellIndentifier];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseCellIndentifier forIndexPath:indexPath];
    NSDictionary *data = self.list[indexPath.row];
    cell.contentView.backgroundColor = data[@"color"];
    cell.textLabel.text = [NSString stringWithFormat:@"cell %@", data[@"number"]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"showDetail" sender:nil];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    NSDictionary *data = self.list[indexPath.row];
    DetailViewController *vc = segue.destinationViewController;
    
    vc.cellNumber = [NSString stringWithFormat:@"%@",data[@"number"]];
    vc.color = data[@"color"];
}
@end
