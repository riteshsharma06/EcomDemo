//
//  productCollections.m
//  EcomDemoRitesh
//
//  Created by SoftBunch  on 8/10/16.
//  Copyright © 2016 miimobileapp. All rights reserved.
//

#import "productCollections.h"
#import "ProductCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface productCollections ()
{
    NSMutableArray *arrayToload;
    NSMutableArray *MenCollection;
    NSMutableArray *womensCollection;
    NSMutableArray *kids;
    NSMutableArray *furniture;
    NSMutableArray *homeAppliances;
    NSMutableArray *titles;
    NSMutableArray *imagesArray;
}

@end

@implementation productCollections

//static NSString * const reuseIdentifier = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    //@"Men",@"Women",@"Kids",@"Furniture",@"HomeAppliances"
    [self.navigationItem setTitle:self.prouct_title];
    
    if([self.prouct_title isEqualToString:@"Men"])
    {
        MenCollection = [[NSMutableArray alloc] initWithObjects:@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/880592/2015/10/29/11446107646151-Roadster-Pack-of-2-T-shirts-6871446107645609-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1368776/2016/6/14/11465907201321-HRX-by-Hrithik-Roshan-Men-Navy-Running-Shoes-3041465907201118-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1239461/2016/3/18/11458300691457-Flying-Machine-Black-Michael-Fit-Jeans-7211458300690791-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/998939/2015/9/24/11443094065954-Shaftesbury-London-Men-Shirts-3551443094065581-1_mini.jpg", nil];
        titles = [[NSMutableArray alloc] initWithObjects:@"T-Shirts",@"Shoes",@"Bottom Wear",@"Shirts", nil];
        arrayToload = titles;
        imagesArray =MenCollection;
    }
    if([self.prouct_title isEqualToString:@"Women"])
    {
        womensCollection = [[NSMutableArray alloc] initWithObjects:@"http://assets.myntassets.com/h_480,q_95,w_360/v1/assets/images/1272039/2016/3/21/11458547331714-Campus-Sutra-Grey--Blue-T-shirt-2701458547331212-1.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1405757/2016/8/2/11470130593091-DressBerry-Off-White-Printed-Crop-Top-381470130592738-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1409593/2016/6/25/11466829168831-Bitterlime-Pack-of-2-Skinny-Jeggings-4511466829168592-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1303413/2016/7/14/11468482415281-Roadster-Navy--Red-Checked-Casual-Shirt-8461468482414960-1_mini.jpg", nil];
        titles = [[NSMutableArray alloc] initWithObjects:@"T-Shirts",@"Tops",@"Jeans",@"Shirts", nil];
        arrayToload = titles;
        imagesArray =womensCollection;
    }
    if([self.prouct_title isEqualToString:@"Kids"])
    {
        titles = [[NSMutableArray alloc] initWithObjects:@"T-Shirts",@"Tops",@"Jeans",@"Shirts", nil];
        kids = [[NSMutableArray alloc] initWithObjects:@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1199114/2016/2/25/11456389378045-612-League-Girls-Yellow-Printed-T-shirt-8131456389377757-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1313104/2016/8/3/11470207254210-YK-Girls-White--Blue-Pack-of-2-Floral-Print-T-shirts-671470207254014-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/1232481/2016/3/16/11458119360093-612-League-Girls-Light-Blue-Washed-Jeans-4531458119359662-1_mini.jpg",@"http://assets.myntassets.com/h_307,q_95,w_230/v1/assets/images/994743/2015/11/2/11446468235327-Tommy-Hilfiger-Boys-Blue--Purple-Striped-Shirt-131446468235032-1_mini.jpg", nil];
        arrayToload = titles;
        imagesArray =kids;
    }
    if([self.prouct_title isEqualToString:@"Furniture"])
    {
        furniture = [[NSMutableArray alloc] initWithObjects:@"Sofa",@"Dinning Table",@"Bed",@"Chairs", nil];
        arrayToload = titles;
        imagesArray =furniture;
    }
    if([self.prouct_title isEqualToString:@"HomeAppliances"])
    {
        homeAppliances = [[NSMutableArray alloc] initWithObjects:@"", nil];
        arrayToload = homeAppliances;
    }
   
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
    if ([arrayToload count] > 0) {
        return [arrayToload count];
    }
    else
    {
       return 0;
    }
    
    return 0;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ProductCell *cell = (ProductCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    [cell.imgcell sd_setImageWithURL:[NSURL URLWithString:[imagesArray objectAtIndex:indexPath.row]]
                      placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    
    [cell.headerButton setTitle:[arrayToload objectAtIndex:indexPath.row] forState:UIControlStateNormal];
    
    cell.FooterButton.tag = indexPath.row;
    [cell.FooterButton  addTarget:self action:@selector(callNewPage:) forControlEvents:UIControlEventTouchUpInside];
    
    //productList
    // Configure the cell
    
    return cell;
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
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if (kind == UICollectionElementKindSectionHeader) {
        
        return [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];;
    }
    
    
    if (kind == UICollectionElementKindSectionFooter) {
        
        return [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"footer" forIndexPath:indexPath];;
        
        
    }
    
    
    return nil;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    int width =(collectionView.frame.size.width/2 -5);
    int height = width*1.62;
    
    //You may want to create a divider to scale the size by the way..
    return CGSizeMake(width,height);
    
    
}

#pragma mark footer button Click event
-(void)callNewPage:(id)sender
{
    [self performSegueWithIdentifier:@"productList" sender:nil];
}
#pragma mark

@end
