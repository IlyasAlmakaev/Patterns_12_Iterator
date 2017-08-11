//
//  ItemInShop.h
//  Patterns_12_Iterator
//
//  Created by Ильяс on 11.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemInShop : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL isBroken;

- (id)initWithArgs:(NSString *)aName andQuality:(BOOL)isBroken;

@end
