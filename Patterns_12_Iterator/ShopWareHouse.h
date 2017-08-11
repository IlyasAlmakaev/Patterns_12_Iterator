//
//  ShopWareHouse.h
//  Patterns_12_Iterator
//
//  Created by Ильяс on 11.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemInShop.h"

@class BasicEnumerator;
@class GoodItemsEnumerator;
@class BadItemsEnumerator;

@interface ShopWareHouse : NSObject

@property (nonatomic, strong) NSMutableArray *goods;
@property (nonatomic, strong) GoodItemsEnumerator *goodItemsEnumerator;
@property (nonatomic, strong) BadItemsEnumerator *badItemsEnumerator;

- (void)addItem:(ItemInShop *)anItem;

- (NSEnumerator *)getBrokenItemsEnumerator;
- (NSEnumerator *)getGoodItemsEnumerator;


@end
