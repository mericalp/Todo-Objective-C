//
//  ViewController.m
//  Todo
//
//  Created by Meric on 25.12.2022.
//

#import "ViewController.h"
#import "TodoViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  if (self = [super initWithCoder:aDecoder]) {
    TodoViewController *todoVC = [[TodoViewController alloc] init];
    [self addChildViewController:todoVC];
  }
  return self;
}

@end
