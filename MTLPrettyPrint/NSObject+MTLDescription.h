//
//  NSObject+MTLDescription.h
//  MTLPrettyPrint
//
//  Created by William Green on 2015-08-04.
//  Copyright (c) 2015 Inkling. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface NSObject (MTLDescription)
@property (readonly, copy) NSString *mtl_description;
@end

