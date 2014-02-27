//
//  ViewController.m
//  HashDemo
//
//  Created by Ivan Lesko on 2/26/14.
//  Copyright (c) 2014 Ivan Lesko. All rights reserved.
//
// This projects was worked on by Chris Meehan ,Ivan Lesko , Spencer Fornaciari, and Richard Lichkus

#import "ViewController.h"
#import "HashTable.h"
#import "MutableHashTable.h"

#import "HashBucket.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Hey
    
    MutableHashTable *mutHashTable = [MutableHashTable new];
    [mutHashTable setObject:@"Johnson" forKey:@"Brad"];
    [mutHashTable setObject:@"Richardson" forKey:@"Rich"];
    [mutHashTable setObject:@"Zimmer" forKey:@"Zach"];
    [mutHashTable setObject:@"Tomson" forKey:@"Tom"];
    [mutHashTable setObject:@"Smith" forKey:@"Steve"];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
