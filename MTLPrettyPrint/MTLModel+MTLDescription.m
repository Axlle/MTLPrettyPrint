//
//  MTLModel+MTLDescription.m
//  MTLPrettyPrint
//
//  Created by William Green on 2015-08-04.
//  Copyright (c) 2015 Inkling. All rights reserved.
//

#import "MTLModel+MTLDescription.h"

#import "NSObject+MTLDescription.h"

@implementation MTLModel (MTLDescription)

- (NSString *)description {
    NSMutableSet *permanentKeys = [NSMutableSet set];
    for (NSString *propertyKey in [[self class] propertyKeys]) {
        if ([[self class] storageBehaviorForPropertyWithKey:propertyKey] == MTLPropertyStoragePermanent) {
            [permanentKeys addObject:propertyKey];
        }
    }

    NSDictionary *permanentProperties = [self dictionaryWithValuesForKeys:permanentKeys.allObjects];

    return [NSString stringWithFormat:@"<%@: %p> %@", self.class, self, [permanentProperties mtl_description]];
}

@end
