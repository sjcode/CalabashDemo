//
//  DetailViewController.m
//  CalabashDemo
//
//  Created by sujian on 15/01/2018.
//  Copyright © 2018 sujian. All rights reserved.
//

#import "DetailViewController.h"
#import "UIColor+Random.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = self.color;
    self.label.text = [NSString stringWithFormat:@"detail %@", self.cellNumber];
}

@end
