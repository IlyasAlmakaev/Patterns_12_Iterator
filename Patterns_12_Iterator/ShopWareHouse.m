//
//  ShopWareHouse.m
//  Patterns_12_Iterator
//
//  Created by Ильяс on 11.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "ShopWareHouse.h"
#import "BadItemsEnumerator.h"
#import "GoodItemsEnumerator.h"

@implementation ShopWareHouse

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.goods = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addItem:(ItemInShop *)anItem {
    [self.goods addObject:anItem];
}

- (NSEnumerator *)getBrokenItemsEnumerator {
    self.badItemsEnumerator = [[BadItemsEnumerator alloc] initWithItems:_goods];
    
    return self.badItemsEnumerator;
}

- (NSEnumerator *)getGoodItemsEnumerator {
    self.goodItemsEnumerator = [[GoodItemsEnumerator alloc] initWithItems:_goods];
    
    return self.goodItemsEnumerator;
}

@end
