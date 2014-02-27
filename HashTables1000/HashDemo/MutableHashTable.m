//
//  MutableHashTable.m
//  HashDemo
//
//  Created by Ivan Lesko on 2/26/14.
//  Copyright (c) 2014 Ivan Lesko. All rights reserved.
//

#import "MutableHashTable.h"
#import "HashBucket.h"

@implementation MutableHashTable

- (id)init {
    
    self = [super init];
    return self;
    
}

- (void)doubleSize {
    
    NSMutableArray* tempArray = [[NSMutableArray alloc]init];
    
    self.tableSize *=2;
    
    for (int i = 0; i < self.tableSize; i++)
    {
        HashBucket *bucket = [HashBucket new];
        [tempArray addObject:bucket];
    }
    
    NSMutableArray *copiedOrg = [self.tableArray copy];
    self.tableArray = tempArray;
    
    for(HashBucket* currentBucket in copiedOrg)
    {
        if(currentBucket.key)
        {
            [self setObject:currentBucket.obj forKey:currentBucket.key];
            
        }
        
        //Blog post!!! - handle linked list
        
        HashBucket *tempBucket = currentBucket;
        while (tempBucket.next.key)
        {
            [self setObject:tempBucket.next.obj forKey:tempBucket.next.key];
            tempBucket = tempBucket.next;
            
        }
    }
    
    self.tableArray = tempArray;
}


- (void)setObject:(id)obj forKey:(NSString *)key {
    
    [super setObject:obj forKey:key];
    
    if (self.count >= self.tableSize * 0.7) {
        self.count = 0;
        [self doubleSize];
    }
    
    NSLog(@"mutable hash table: %@", self);
}
@end
