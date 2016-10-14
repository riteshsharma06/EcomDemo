//
//  OffersPageView.m
//  EcomDemoRitesh
//
//  Created by SoftBunch  on 8/10/16.
//  Copyright © 2016 miimobileapp. All rights reserved.
//

#import "OffersPageView.h"
#import "offersCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface OffersPageView ()
{
    NSMutableArray *offersImages;
    NSMutableArray *OffersDetails;
}

@end

@implementation OffersPageView

//static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
     [self.navigationItem setTitle:@"Offers"];
    
    offersImages = [[NSMutableArray alloc] initWithObjects:@"http://assets.myntassets.com/w_980,c_limit,fl_progressive,dpr_1.0/assets/images/banners/2016/8/9/11470755543041-AAY-Band-Day-Slideshow-1920-x-1080-px.jpg",@"http://assets.myntassets.com/w_980,c_limit,fl_progressive,dpr_1.0/assets/images/banners/2016/7/27/11469600823913-ucb2.jpg",@"http://assets.myntassets.com/w_980,c_limit,fl_progressive,dpr_1.0/assets/images/banners/2016/7/27/11469600823886-spykar2.jpg",@"http://assets.myntassets.com/w_980,c_limit,fl_progressive,dpr_1.0/assets/images/banners/2016/8/9/11470748973760-slideshow-for-SB.jpg", nil];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
   // [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return [offersImages count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    offersCell *cell = (offersCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    
    [cell.offersImage sd_setImageWithURL:[NSURL URLWithString:[offersImages objectAtIndex:indexPath.row]]
                    placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    // Configure the cell
    
    return cell;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    int width =(collectionView.frame.size.width);
    int height = width-100;
    
    //You may want to create a divider to scale the size by the way..
    return CGSizeMake(width,height);
    
    
}
#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
