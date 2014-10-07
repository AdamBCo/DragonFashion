//
//  Dragon.m
//  DragonFashion
//
//  Created by Adam Cooper on 10/7/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "Dragon.h"
@interface Dragon()
@property (readwrite) NSString *name;
@end


@implementation Dragon

- (instancetype)init{
    abort(); //The Dragon needs a name
    return nil;

}

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (name.length == 0) {
        [NSException raise:NSInvalidArgumentException format:@"Dragons must have a name."];
    }
    self.name = name;
    return self;
}

-(void)setSignatureClothingItem:(NSString *)signatureClothingItem{
    _signatureClothingItem = [NSString stringWithFormat:@"%@.",signatureClothingItem];
}

@end
