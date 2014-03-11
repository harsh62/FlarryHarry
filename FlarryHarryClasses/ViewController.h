//
//  ViewController.h
//  FlappyBirdClone
//

//  Copyright (c) 2014 Matthias Gall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "GADBannerView.h"
#import "GADInterstitial.h"

@interface ViewController : UIViewController<GADInterstitialDelegate>{
    GADBannerView *bannerView_;
    GADBannerView *bannerViewTop_;
    GADInterstitial *interstitial_;
    BOOL isFirstLoad;
}

@end
