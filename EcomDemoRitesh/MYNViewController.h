//
//  MYNViewController.h
//  StickFlowLayoutDemo
//
//  Created by Param Aggarwal on 19/08/14.
//  Copyright (c) 2014 Myntra Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MYNViewController : UICollectionViewController
{
    NSMutableArray *UserTypes;
    NSMutableArray *userDataImage;
    NSString *nextPageTitle;
}
@property (strong, nonatomic) IBOutlet UICollectionView *my_collection;
@end
