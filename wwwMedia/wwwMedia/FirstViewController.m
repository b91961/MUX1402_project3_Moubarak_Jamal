//
//  FirstViewController.m
//  wwwMedia
//
//  Created by Jamal Moubarak on 2/12/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "CustomCell.h"
#import "SocialCustomClass.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    //set a rounded corner radius on myTableView
    myCollectionView.layer.cornerRadius = 10;
    
    // create custom objects
    SocialCustomClass *social1 = [[SocialCustomClass alloc] init];
    social1.name = @"Facebook";
    social1.description = @"est. 2004";
    social1.socialImage = [UIImage imageNamed:@"Facebook-Icon.png"];
    social1.description2 = @"https://www.facebook.com";
    //social1.description3 = @"Facebook allows individuals to create their own pages filled with postings, photos, video, and portable applications generally called widgets and interact with other users. In Facebook's vision of the Web, you, the user, are in control of your persona. Article URL : http://goo.gl/VzZrtk ";
    social1.description3 = @"Facebook is an online social networking service. Users must register before using the site, after which they may create a personal profile, business page, add other users as friends, exchange messages, and receive automatic notifications when they update their profile.";
    
    SocialCustomClass *social2 = [[SocialCustomClass alloc] init];
    social2.name = @"Google+";
    social2.description = @"est. 2011";
    social2.socialImage = [UIImage imageNamed:@"Google-Plus-Icon.png"];
    social2.description2 = @"http://plus.google.com";
    social2.description3 = @"Google+ is a social networking and identity service. Google has described Google+ as a social layer that enhances many of its online properties, and that it is not simply a social networking website, but also an authorship tool that associates web-content directly with its owner/author.";
    
    SocialCustomClass *social3 = [[SocialCustomClass alloc] init];
    social3.name = @"Twitter";
    social3.description = @"est. 2006";
    social3.socialImage = [UIImage imageNamed:@"Twitter-Icon.png"];
    social3.description2 = @"http://www.twitter.com";
    social3.description3 = @"Twitter is an online social networking and microblogging service that enables users to send and read tweets, which are text messages limited to 140 characters. Registered users can read and post tweets, but unregistered users can only read them.";
    
    SocialCustomClass *social4 = [[SocialCustomClass alloc] init];
    social4.name = @"Instagram";
    social4.description = @"est. 2010";
    social4.socialImage = [UIImage imageNamed:@"Instagram-Icon.png"];
    social4.description2 = @"http://www.instagram.com";
    social4.description3 = @"Instagram is an online photo-sharing, video-sharing and social networking service that enables its users to take pictures and videos, apply digital filters to them, and share them on a variety of social networking services, such as Facebook, Twitter, Tumblr and Flickr.";
    
    SocialCustomClass *social5 = [[SocialCustomClass alloc] init];
    social5.name = @"Linkedin";
    social5.description = @"est. 2003";
    social5.socialImage = [UIImage imageNamed:@"Linkedin-Icon.png"];
    social5.description2 = @"http://www.linkedin.com";
    social5.description3 = @"LinkedIn is a social networking website for people in professional occupations and it is mainly used for professional networking. As a registered user on LinkedIn, you create a profile with details about your education, work experience and competences.";
    
    SocialCustomClass *social6 = [[SocialCustomClass alloc] init];
    social6.name = @"YouTube";
    social6.description = @"est. 2005";
    social6.socialImage = [UIImage imageNamed:@"YouTube-Icon.png"];
    social6.description2 = @"http://www.youtube.com";
    social6.description3 = @"YouTube is a video-sharing website on which users can upload, view and share videos. It uses Adobe Flash Video and HTML5 technology to display a wide variety of user-generated video content. Most of the content on YouTube has been uploaded by individuals, but media corporations offer some of their material.";
    
    SocialCustomClass *social7 = [[SocialCustomClass alloc] init];
    social7.name = @"Skype";
    social7.description = @"est. 2003";
    social7.socialImage = [UIImage imageNamed:@"Skype-Icon.png"];
    social7.description2 = @"http://www.skype.com";
    social7.description3 = @"Skype is a freemium voice-over-IP service and instant messaging client. The service allows users to communicate with peers by voice using a microphone, video by using a webcam, and instant messaging over the Internet. Phone calls may be placed to recipients on the traditional telephone networks.";
    
    SocialCustomClass *social8 = [[SocialCustomClass alloc] init];
    social8.name = @"Pinterest";
    social8.description = @"est. 2010";
    social8.socialImage = [UIImage imageNamed:@"Pinterest.png"];
    social8.description2 = @"http://www.pinterest.com";
    social8.description3 = @"Pinterest is a pinboard-style photo-sharing website that allows users to create and manage theme-based image collections such as events, interests, and hobbies. Users can browse other pinboards for images, re-pin images to their own pinboards, or like photos.";
    
    SocialCustomClass *social9 = [[SocialCustomClass alloc] init];
    social9.name = @"Foursquare";
    social9.description = @"est. 2009";
    social9.socialImage = [UIImage imageNamed:@"Foursquare-Icon.png"];
    social9.description2 = @"http://www.foursquare.com";
    social9.description3 = @"Foursquare is a location-based social networking website for mobile devices, such as smartphones. Users check in at venues using a mobile website, text messaging or a device-specific application by selecting from a list of venues the application locates nearby.";
    
    SocialCustomClass *social10 = [[SocialCustomClass alloc] init];
    social10.name = @"Flickr";
    social10.description = @"est. 2004";
    social10.socialImage = [UIImage imageNamed:@"Flickr-Icon.png"];
    social10.description2 = @"http://www.flickr.com";
    social10.description3 = @"Flickr is an image and video hosting website, and web services suite. In addition to being a popular website for users to share and embed personal photographs, and effectively an online community, the service is widely used by photo researchers and by bloggers to host images that they embed in blogs and social media.";
    
    SocialCustomClass *social11 = [[SocialCustomClass alloc] init];
    social11.name = @"Digg";
    social11.description = @"est. 2004";
    social11.socialImage = [UIImage imageNamed:@"Digg-Icon.png"];
    social11.description2 = @"http://www.digg.com";
    social11.description3 = @"Digg is a news aggregator with an editorially driven front page, aiming to select stories specifically for the Internet audience such as science, trending political issues, and viral Internet issues. It has support for sharing content to other social platforms such as Twitter and Facebook.";
    
    SocialCustomClass *social12 = [[SocialCustomClass alloc] init];
    social12.name = @"Path";
    social12.description = @"est. 2010";
    social12.socialImage = [UIImage imageNamed:@"Path-Icon.png"];
    social12.description2 = @"http://www.path.com";
    social12.description3 = @"Path is a social networking-enabled photo sharing and messaging service for mobile devices. The service allows users to share with their close friends and family up to a total of 150 contacts. Users update their stream on Path by posting photos, adding tags for people, places, and things.";
    
    SocialCustomClass *social13 = [[SocialCustomClass alloc] init];
    social13.name = @"Myspace";
    social13.description = @"est. 2003";
    social13.socialImage = [UIImage imageNamed:@"Myspace-Icon.png"];
    social13.description2 = @"http://www.myspace.com";
    social13.description3 = @"Myspace is a social networking service with a strong music emphasis. Myspace had a significant influence on pop culture and music and created a gaming platform that launched the successes of Zynga and Rock You, among others. The site also started the trend of creating unique URLs for companies and artists.";
    
    SocialCustomClass *social14 = [[SocialCustomClass alloc] init];
    social14.name = @"Reddit";
    social14.description = @"est. 2005";
    social14.socialImage = [UIImage imageNamed:@"Reddit-Icon.png"];
    social14.description2 = @"http://www.reddit.com";
    social14.description3 = @"Reddit is a social news and entertainment website where registered users submit content in the form of links or text posts. Users then vote each submission up or down to rank the post and determine its position on the site's pages. Content entries are organized by areas of interest called subreddits.";
    
    SocialCustomClass *social15 = [[SocialCustomClass alloc] init];
    social15.name = @"StumbleUpon";
    social15.description = @"est. 2001";
    social15.socialImage = [UIImage imageNamed:@"StumbleUpon-Icon.png"];
    social15.description2 = @"http://www.stumbleupon.com";
    social15.description3 = @"StumbleUpon is a discovery engine (a form of web search engine) that finds and recommends web content to its users. Its features allow users to discover and rate Web pages, photos, and videos that are personalized to their tastes and interests using peer-sourcing and social-networking principles.";
    
    SocialCustomClass *social16 = [[SocialCustomClass alloc] init];
    social16.name = @"Technorati";
    social16.description = @"est. 2002";
    social16.socialImage = [UIImage imageNamed:@"Technorati-Icon.png"];
    social16.description2 = @"http://www.technorati.com";
    social16.description3 = @"Technorati is an Internet search engine for searching blogs. Technorati uses and contributes to open source software. Technorati has an active software developer community, many of them from open-source culture. The name Technorati is a blend of the words technology and literati.";
    
    SocialCustomClass *social17 = [[SocialCustomClass alloc] init];
    social17.name = @"Deviantart";
    social17.description = @"est. 2000";
    social17.socialImage = [UIImage imageNamed:@"Deviantart-Icon.png"];
    social17.description2 = @"http://www.deviantART.com";
    social17.description3 = @"DeviantArt, LLC is an online community showcasing various forms of user-made artwork. DeviantArt aims to provide a platform for any artist to exhibit and discuss works. Works are organized in a comprehensive category structure along with extensive downloadable resources such as tutorials and stock photography.";
    
    SocialCustomClass *social18 = [[SocialCustomClass alloc] init];
    social18.name = @"Tumblr";
    social18.description = @"est. 2007";
    social18.socialImage = [UIImage imageNamed:@"Tumblr-icon.png"];
    social18.description2 = @"http://www.tumblr.com";
    social18.description3 = @"Tumblr is a microblogging platform and social networking website. The service allows users to post multimedia and other content to a short-form blog. Users can follow other users' blogs, as well as make their blogs private. Much of the website's features are accessed from the dashboard interface.";
    
    SocialCustomClass *social19 = [[SocialCustomClass alloc] init];
    social19.name = @"Slideshare";
    social19.description = @"est. 2006";
    social19.socialImage = [UIImage imageNamed:@"Slideshare-Icon.png"];
    social19.description2 = @"http://www.slideshare.net";
    social19.description3 = @"SlideShare is a Web 2.0 based slide hosting service. Users can upload files privately or publicly in the following file formats: PowerPoint, PDF, Keynote or OpenDocument presentations. Slide decks can then be viewed on the site itself, on hand held devices or embedded on other sites.";
    
    SocialCustomClass *social20 = [[SocialCustomClass alloc] init];
    social20.name = @"Delicious";
    social20.description = @"est. 2003";
    social20.socialImage = [UIImage imageNamed:@"Delicious-Icon.png"];
    social20.description2 = @"http://www.delicious.com";
    social20.description3 = @"Delicious is a social bookmarking web service for storing, sharing, and discovering web bookmarks. Delicious uses a non-hierarchical classification system in which users can tag each of their bookmarks with freely chosen index terms. A combined view of everyone's bookmarks with a given tag is available.";
    
    //create an array with the custom objects
    socialArray = [[NSMutableArray alloc] initWithObjects:social1, social2, social3, social4, social5, social6, social7, social8, social9, social10, social11, social12, social13, social14, social15, social16, social17, social18, social19, social20, nil];
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //set number of rows to the amount of objects in the array.
    return [socialArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    if (cell != nil)
    {
        SocialCustomClass *currentSocial = [socialArray objectAtIndex:indexPath.row];
        [cell refreshCellWithInfo:currentSocial.name cellImage:currentSocial.socialImage];
    }
    return cell;
}

// Go to Detail view.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *detailViewController = segue.destinationViewController;
    if (detailViewController != nil)
    {
        UICollectionViewCell *cell = (UICollectionViewCell*)sender;
        NSIndexPath *indexPath = [myCollectionView indexPathForCell:cell];
        
        // get the string from the array based on the item in the table view we clicked on.
        SocialCustomClass *currentSocial = [socialArray objectAtIndex:indexPath.row];
        
        detailViewController.currentSocial = currentSocial;
    }
}

// Unwind Button
-(IBAction)done:(UIStoryboardSegue*)segue
{
    
}


@end