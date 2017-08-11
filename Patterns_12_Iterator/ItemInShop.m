//
//  ItemInShop.m
//  Patterns_12_Iterator
//
//  Created by Ильяс on 11.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "ItemInShop.h"

@implementation ItemInShop

- (id)initWithArgs:(NSString *)aName andQuality:(BOOL)isBroken {
    self = [super init];
    self.name = aName;
    self.isBroken = isBroken;
    
    return  self;
}

@end
