//
//  ViewController.m
//  DragonFashion
//
//  Created by Adam Cooper on 10/7/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"

@interface ViewController () <UITabBarDelegate, UITableViewDataSource>
@property NSMutableArray *dragons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Dragon *puffDragon = [[Dragon alloc] initWithName:@"Puff"];
    puffDragon.signatureClothingItem = @"Hat";
    Dragon *smaugDragon = [[Dragon alloc] initWithName:@"Smaug"];
    smaugDragon.signatureClothingItem = @"Fedora";
    Dragon *falcorDragon = [[Dragon alloc] initWithName:@"Falcor"];
    falcorDragon.signatureClothingItem = @"Fur Coat";
    self.dragons = [NSMutableArray arrayWithObjects:puffDragon, smaugDragon, falcorDragon, nil];
    
    for (Dragon *dragon in self.dragons) {
        NSLog(@"%@",dragon.name);
    }
   
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dragons.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragon.name;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

@end
