//
//  GoodItemsEnumerator.m
//  Patterns_12_Iterator
//
//  Created by Ильяс on 11.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "GoodItemsEnumerator.h"

@implementation GoodItemsEnumerator

- (id)initWithItems:(NSMutableArray *)anItems {
    self = [super init];
    self.itemsArray = [[NSMutableArray alloc] init];
    
    for (ItemInShop *item in anItems) {
        if (!item.isBroken) {
            [self.itemsArray addObject:item];
        }
    }
    
    self.internalEnumerator = [self.itemsArray objectEnumerator];
    
    return self;
}

- (NSArray *)allObjets {
    return self.itemsArray;
}

- (id)nextObject {
    return [self.internalEnumerator nextObject];
}

@end
