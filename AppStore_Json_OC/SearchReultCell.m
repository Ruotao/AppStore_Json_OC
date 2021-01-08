//
//  SearchReultCell.m
//  AppStore_Json_OC
//
//  Created by Eddie on 2021/1/8.
//

#import "SearchReultCell.h"

@implementation SearchReultCell

//初始化我们的Cell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(!self){
        NSLog(@"cell出了问题");
    }else{
        
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

@end
