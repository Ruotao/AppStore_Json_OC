//
//  SearchViewController.h
//  AppStore_Json_OC
//
//  Created by Eddie on 2021/1/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SearchViewController : UICollectionViewController <UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate>
//@property (nonatomic, strong) UICollectionView *collectionView;
@property(assign,nonatomic) NSString* cellID;


@end

NS_ASSUME_NONNULL_END
