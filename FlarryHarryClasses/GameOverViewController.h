//
//  GameOverViewController.h
//  FlappyBirdClone
//
//  Created by Harshdeep  Singh on 09/03/14.
//  Copyright (c) 2014 Matthias Gall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"


@interface GameOverViewController : UIViewController{
    GADBannerView *bannerView_;
    GADBannerView *bannerViewTop_;
    __weak IBOutlet UILabel *currentScore;
    __weak IBOutlet UIView *gameOverView;
    __weak IBOutlet UILabel *highScoreLabel;
}
- (IBAction)dismissCurrentController:(id)sender;
- (IBAction)ExitFromApplication:(id)sender;

@end
