//
//  infoCell.h
//  EcomDemoRitesh
//
//  Created by SoftBunch  on 8/10/16.
//  Copyright © 2016 miimobileapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KIImagePager.h"
@interface infoCell : UICollectionViewCell<KIImagePagerDelegate, KIImagePagerDataSource,UITableViewDelegate,UITableViewDataSource>
{
  
    NSMutableArray *arrTitle;
    NSMutableArray *description;
    

}
@property(nonatomic,strong)NSMutableArray *imageArry;
@property (weak, nonatomic) IBOutlet KIImagePager *bannerImages;
@property(weak,nonatomic)IBOutlet UITableView *collection;
@end
