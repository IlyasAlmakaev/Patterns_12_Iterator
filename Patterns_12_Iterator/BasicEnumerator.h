//
//  BasicEnumerator.h
//  Patterns_12_Iterator
//
//  Created by Ильяс on 11.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemInShop.h"

@interface BasicEnumerator : NSEnumerator

- (id)initWithItems:(NSMutableArray *)anItems;
- (NSArray *)allObjets;
- (id)nextObject;

@end
