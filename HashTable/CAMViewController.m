//
//  CAMViewController.m
//  HashTable
//
//  Created by Chris Meehan on 2/26/14.
//  Copyright (c) 2014 Chris Meehan. All rights reserved.
//

#import "CAMViewController.h"

@interface CAMViewController ()

@end

@implementation CAMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    NSString* string = @"hi";
    
    int i =[string characterAtIndex:0];
    
    NSLog(@"%d", i );
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
