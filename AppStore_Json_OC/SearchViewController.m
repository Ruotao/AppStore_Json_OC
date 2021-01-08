//
//  SearchViewController.m
//  AppStore_Json_OC
//
//  Created by Eddie on 2021/1/5.
//

#import "SearchViewController.h"
#import "SearchReultCell.h"

@interface SearchViewController ()



@end

@implementation SearchViewController

- (NSString *)cellID{
    NSString* name = @"Cell";
    return name;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor whiteColor];
    
//    [self.view addSubview:self.collectionView];
    
    self.collectionView.backgroundColor = [UIColor redColor];
    [self.collectionView registerClass:[SearchReultCell class] forCellWithReuseIdentifier:self.cellID];
    

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}




- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    SearchReultCell* cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:self.cellID forIndexPath:indexPath];
    
    
    return cell;
     
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return CGSizeMake(CGRectGetWidth(self.collectionView.frame), 200);
}




#pragma mark: lazy loading
//- (UICollectionView *)collectionView
//{
//    if (!_collectionView) {
//        
//        NSLog(@"collectionview没有创建");
//    }
//    
//    return  _collectionView;
//}


@end
