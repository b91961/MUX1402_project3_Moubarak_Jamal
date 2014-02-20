//
//  CustomCell.h
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UICollectionViewCell
{
    IBOutlet UILabel *firstLabel;
    
    IBOutlet UIImageView *myImageView;
}

-(void)refreshCellWithInfo:(NSString*)firstString cellImage:(UIImage*)cellImage;

@end