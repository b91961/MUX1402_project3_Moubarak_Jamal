//
//  CustomCell.m
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)refreshCellWithInfo:(NSString*)firstString cellImage:(UIImage*)cellImage
{
    firstLabel.text = firstString;
    
    myImageView.image = cellImage;
}

@end
