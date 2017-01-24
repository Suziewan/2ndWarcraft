//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"


@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    return self;
}
- (Footman *)trainFootman{
    
    self.gold = self.gold - 135;
    //taking all of gold and reducing it by 135 each time
    self.food = self.food - 2;
    //taking all of food and reducing it by 2 each time
    
    if ([self canTrainFootman] == NO) {
        return nil;
    }else{
        //make trainFootman produce a footman
        return [[Footman alloc]init];
    }
}
- (BOOL)canTrainFootman{
    if (self.food <= 2 || self.gold <= 135 ) {
        return NO;
    }else{
        return YES;
    }
}


@end
