//
//  infoCell.m
//  EcomDemoRitesh
//
//  Created by SoftBunch  on 8/10/16.
//  Copyright © 2016 miimobileapp. All rights reserved.
//

#import "infoCell.h"

@implementation infoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    arrTitle = [[NSMutableArray alloc] initWithObjects:@"Brand",@"Size Availablity ",@"description",@"Stock Availibility",@"Price", nil];
    description  = [[NSMutableArray alloc] initWithObjects:@"adidas",@"M,L,XL,XXL",@"Brand New Design with Best Quality and color for mens",@"Yes",@"₹965", nil];
    
    self.imageArry = [[NSMutableArray alloc] initWithObjects:@"http://assets.myntassets.com/w_450,q_80/v1/assets/images/1425200/2016/7/21/11469098388803-PRE-ORDER-Adidas-Red-Manchester-United-FC-Jersey-7811469098388688-1.jpg",@"http://assets.myntassets.com/w_450,q_80/v1/assets/images/1425200/2016/7/21/11469098388783-PRE-ORDER-Adidas-Red-Manchester-United-FC-Jersey-7811469098388688-2.jpg",@"http://assets.myntassets.com/w_450,q_80/v1/assets/images/1425200/2016/7/22/11469164252362-PRE-ORDER-Adidas-Red-Manchester-United-FC-Jersey-2861469164252309-3.jpg",@"http://assets.myntassets.com/w_450,q_80/v1/assets/images/1425200/2016/7/21/11469098388730-PRE-ORDER-Adidas-Red-Manchester-United-FC-Jersey-7811469098388688-4.jpg",@"http://assets.myntassets.com/w_450,q_80/v1/assets/images/1425200/2016/7/21/11469098388705-PRE-ORDER-Adidas-Red-Manchester-United-FC-Jersey-7811469098388688-5.jpg", nil];
    // Initialization code
}


#pragma mark - KIImagePager DataSource
- (NSArray *) arrayWithImages:(KIImagePager*)pager
{
    return self.imageArry;
}

- (UIViewContentMode) contentModeForImage:(NSUInteger)image inPager:(KIImagePager *)pager
{
    return UIViewContentModeScaleToFill;
}


#pragma mark - KIImagePager Delegate
- (void) imagePager:(KIImagePager *)imagePager didScrollToIndex:(NSUInteger)index
{
    NSLog(@"%s %lu", __PRETTY_FUNCTION__, (unsigned long)index);
}

- (void) imagePager:(KIImagePager *)imagePager didSelectImageAtIndex:(NSUInteger)index
{
    NSLog(@"%s %lu", __PRETTY_FUNCTION__, (unsigned long)index);

   // selectedIDF=[NSString stringWithFormat:@"%@",[[sliderArray objectAtIndex:index] objectForKey:@"id"]];
    //[self performSegueWithIdentifier:@"idBoxDetail" sender:nil];



}


#pragma mark tableView delegate Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrTitle count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"idTable"];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",[arrTitle objectAtIndex:indexPath.row]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",[description objectAtIndex:indexPath.row]];
    return cell;
}

#pragma mark


@end
