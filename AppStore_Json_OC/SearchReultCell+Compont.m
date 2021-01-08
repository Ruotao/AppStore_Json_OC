//
//  SearchReultCell+Compont.m
//  AppStore_Json_OC
//
//  Created by Eddie on 2021/1/8.
//

#import "SearchReultCell+Compont.h"

@interface SearchReultCell(Components)

@property (weak, nonatomic) UILabel* nameLable;
@property(weak,nonatomic) UILabel* typeLable;
@property(weak, nonatomic)UILabel* ratingLable;
@property(weak,nonatomic)UIImageView* imageViwe;
@property(weak,nonatomic)UIButton* getButton;


@end

@implementation SearchReultCell(Components)

- (UILabel *)nameLable{
    UILabel* name = [[UILabel alloc]init];
    name.backgroundColor = [UIColor blueColor];
    [[name.widthAnchor constraintEqualToConstant:64] isActive];
    [[name.heightAnchor constraintEqualToConstant:64] isActive];
    return name;
}





@end
