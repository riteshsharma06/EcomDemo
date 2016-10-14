//
//  ListProductCell.h
//  EcomDemoRitesh
//
//  Created by SoftBunch  on 8/10/16.
//  Copyright © 2016 miimobileapp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListProductCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *listimage;
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UILabel *strikePrice;
@property (weak, nonatomic) IBOutlet UILabel *myPrice;

@end
