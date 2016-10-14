//
//  MYNViewController.m
//  StickFlowLayoutDemo
//
//  Created by Param Aggarwal on 19/08/14.
//  Copyright (c) 2014 Myntra Designs. All rights reserved.
//

#import "MYNViewController.h"
#import "HeaderFile.h"
#import "MainPageCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "FooterView.h"
#import "productCollections.h"

@implementation MYNViewController
-(void)viewDidLoad
{
    [super viewDidLoad];
    
   // self.navigationController.toolbarHidden = YES;
    
    UserTypes = [[NSMutableArray alloc] initWithObjects:@"Men",@"Women",@"Kids",@"Furniture",@"HomeAppliances", nil];
    userDataImage = [[NSMutableArray alloc] initWithObjects:@"http://assets.myntassets.com/w_700,c_limit,fl_progressive,dpr_1.0/assets/images/retaillabs/2016/8/2/11470136113353-MNH-Slideshow-1920-x-1080-px.jpg",@"http://assets.myntassets.com/w_700,c_limit,fl_progressive,dpr_1.0/assets/images/retaillabs/2016/8/5/11470390522477-coverr.jpg",@"http://assets.myntassets.com/w_700,c_limit,fl_progressive,dpr_1.0/assets/images/banners/2016/5/31/11464702333669-KIDS_MAIN.jpg",@"http://www.hainerpeakfurniture.com/pic/flash/4.jpg",@"http://www.liittodigital.com/wp-content/uploads/2015/08/banner-1-1.png", nil];
    
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [UserTypes count];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    MainPageCell *cell = (MainPageCell *)[self.my_collection dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    //cell.imageCell.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[userDataImage objectAtIndex:indexPath.section]]]];
   [cell.imageCell sd_setImageWithURL:[NSURL URLWithString:[userDataImage objectAtIndex:indexPath.section]]
                      placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if (kind == UICollectionElementKindSectionHeader) {
        
        HeaderFile *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"header" forIndexPath:indexPath];
        header.headerLable.text = [NSString stringWithFormat:@"%@",[UserTypes objectAtIndex:indexPath.section]];
        
        return header;
    }
    

        if (kind == UICollectionElementKindSectionFooter) {
            
            
            FooterView *footer =[collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"footer" forIndexPath:indexPath];
            
            footer.btnFilter.tag = indexPath.section;
            
            [footer.btnFilter addTarget:self
                           action:@selector(switchToNewsDetails:)
                 forControlEvents:UIControlEventTouchUpInside];
            
            
            footer.btnSort.tag = indexPath.section;
            
            [footer.btnSort addTarget:self
                                 action:@selector(OffersDetails:)
                       forControlEvents:UIControlEventTouchUpInside];
            
                return footer;
           
            
        }


    return nil;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
   
    
     // [self performSegueWithIdentifier:@"idSubprodDetails" sender:nil];
    
        
   // }
    
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    int width =(collectionView.frame.size.width);
    int height = width-100;
    
    //You may want to create a divider to scale the size by the way..
    return CGSizeMake(width,height);
    
    
}


#pragma mark FilterButton Action Click
-(void)switchToNewsDetails:(id)sender
{
    UIButton *btn = sender;
    
    
    nextPageTitle= [NSString stringWithFormat:@"%@",[UserTypes objectAtIndex:btn.tag]];
    [self performSegueWithIdentifier:@"ShowDetails" sender:nil];
    
    
}
#pragma mark

#pragma sort button Click Action

-(void)OffersDetails:(id)sender
{
    [self performSegueWithIdentifier:@"OffersDetails" sender:nil];
}
#pragma mark



#pragma mark segue Delegate

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"ShowDetails"])
    {
        productCollections *cvProduct = (productCollections *)segue.destinationViewController;
        cvProduct.prouct_title = nextPageTitle;
        
    }
}
#pragma mark

@end
