//
//  GoodItemsEnumerator.h
//  Patterns_12_Iterator
//
//  Created by Ильяс on 11.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "BasicEnumerator.h"

@interface GoodItemsEnumerator : BasicEnumerator

@property (nonatomic, strong) NSMutableArray *itemsArray;
@property (nonatomic, strong) NSEnumerator *internalEnumerator;

@end
