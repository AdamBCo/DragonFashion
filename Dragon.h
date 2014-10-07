//
//  Dragon.h
//  DragonFashion
//
//  Created by Adam Cooper on 10/7/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property (readonly) NSString *name;
@property (nonatomic) NSString *signatureClothingItem;

- (instancetype)initWithName:(NSString *)name;

@end
