//
//  AppDelegate.m
//  Patterns_12_Iterator
//
//  Created by Ильяс on 04.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "AppDelegate.h"
#import "ShopWareHouse.h"
#import "BasicEnumerator.h"
#import "GoodItemsEnumerator.h"
#import "BadItemsEnumerator.h"
#import "ItemInShop.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    ShopWareHouse *shopWareHouse = [[ShopWareHouse alloc] init];
    
    [shopWareHouse addItem:[[ItemInShop alloc] initWithArgs:@"Item1" andQuality:NO]];
    [shopWareHouse addItem:[[ItemInShop alloc] initWithArgs:@"Item2" andQuality:NO]];
    [shopWareHouse addItem:[[ItemInShop alloc] initWithArgs:@"Item3" andQuality:YES]];
    [shopWareHouse addItem:[[ItemInShop alloc] initWithArgs:@"Item4" andQuality:YES]];
    [shopWareHouse addItem:[[ItemInShop alloc] initWithArgs:@"Item5" andQuality:NO]];
    
    GoodItemsEnumerator *goodIterator = [shopWareHouse getGoodItemsEnumerator];
    BadItemsEnumerator *badIterator = [shopWareHouse getBrokenItemsEnumerator];
    
    ItemInShop *element;
    
    while (element = [goodIterator nextObject]) {
        NSLog(@"Good Item = %@", element.name);
    }
    
    while (element = [badIterator nextObject]) {
        NSLog(@"Bad Item = %@", element.name);
    }
    
    //Пример 1
    
    
    return YES;
}

@end
