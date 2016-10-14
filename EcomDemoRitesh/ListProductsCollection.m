//
//  ListProductsCollection.m
//  EcomDemoRitesh
//
//  Created by SoftBunch  on 8/10/16.
//  Copyright © 2016 miimobileapp. All rights reserved.
//

#import "ListProductsCollection.h"
#import "ListProductCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface ListProductsCollection ()
{
    NSMutableArray *arrListProdImage;
}

@end

@implementation ListProductsCollection

//static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrListProdImage = [[NSMutableArray alloc] initWithObjects:@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1425200/2016/7/21/11469098388803-PRE-ORDER-Adidas-Red-Manchester-United-FC-Jersey-7811469098388688-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1441958/2016/7/28/11469709493637-Ferrari-Red-New-Check-Flag-Jersey-Polo-T-shirt-4361469709493184-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1425201/2016/7/19/11468931578429-Adidas-Black-Manchester-United-Polo-T-shirt-2941468931578078-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1421071/2016/7/26/11469514368162-Nike-Grey-Melange-Polyester-T-shirt-7541469514367802-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1425202/2016/7/19/11468931591912-Adidas-Blue-Manchester-United-Polo-T-shirt-9471468931591610-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1415954/2016/7/28/11469705011749-Adidas-Men-Tshirts-1371469705011504-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1441981/2016/7/28/11469691953234-Ferrari-White-Polo-T-shirt-5441469691952992-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1415892/2016/8/1/11470053075756-Adidas-Men-Tshirts-1511470053085639-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1128678/2016/6/6/11465192031282-HRX-by-Hrithik-Roshan-Black-Printed-Active-Polo-T-shirt-3401465192031065-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1208939/2016/4/7/11460024536498-PUMA-Blue-Essential-T-shirt--781460024535097-1_mini.jpg", nil];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
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
    return [arrListProdImage count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ListProductCell *cell = (ListProductCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    [cell.listimage sd_setImageWithURL:[NSURL URLWithString:[arrListProdImage objectAtIndex:indexPath.row]]
                        placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    
    NSDictionary* attributes = @{
                                 NSStrikethroughStyleAttributeName: [NSNumber numberWithInt:NSUnderlineStyleSingle]
                                 };
    
    NSAttributedString* attrText = [[NSAttributedString alloc] initWithString:@"₹1200" attributes:attributes];
    cell.strikePrice.attributedText = attrText;
    // Configure the cell
    
    
    
    
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    int width =(collectionView.frame.size.width/2 -5);
    int height = width*1.62;
    
    //You may want to create a divider to scale the size by the way..
    return CGSizeMake(width,height);
    
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"infoView" sender:nil];
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
