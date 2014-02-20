//
//  FirstViewController.h
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
{
    IBOutlet UICollectionView *myCollectionView;
    IBOutlet UICollectionViewFlowLayout *collection;
    NSMutableArray *socialArray;
}

@end
