//
//  GameOverViewController.m
//  FlappyBirdClone
//
//  Created by Harshdeep  Singh on 09/03/14.
//  Copyright (c) 2014 Matthias Gall. All rights reserved.
//

#import "GameOverViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface GameOverViewController ()

@end

@implementation GameOverViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    // Create a view of the standard size at the top of the screen.
    // Available AdSize constants are explained in GADAdSize.h.
    bannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    
    bannerView_.backgroundColor = [UIColor darkGrayColor];
    
    // Specify the ad unit ID.
    bannerView_.adUnitID = @"a1531b5063d6c3c";
    
    // Let the runtime know which UIViewController to restore after taking
    // the user wherever the ad goes and add it to the view hierarchy.
    bannerView_.rootViewController = self;
    [bannerView_ setFrame:CGRectMake(0, self.view.frame.size.height-bannerView_.frame.size.height,bannerView_.frame.size.width,  bannerView_.frame.size.height)];
    [self.view addSubview:bannerView_];
    
    // Initiate a generic request to load it with an ad.
    [bannerView_ loadRequest:[GADRequest request]];
    
    
    // Create a view of the standard size at the top of the screen.
    // Available AdSize constants are explained in GADAdSize.h.
    bannerViewTop_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    
    // Specify the ad unit ID.
    bannerViewTop_.adUnitID = @"a1531b5063d6c3c";
    
    bannerViewTop_.backgroundColor = [UIColor darkGrayColor];
    
    
    // Let the runtime know which UIViewController to restore after taking
    // the user wherever the ad goes and add it to the view hierarchy.
    bannerViewTop_.rootViewController = self;
    // [bannerViewTop_ setFrame:CGRectMake(0, 20,bannerView_.frame.size.width,  bannerView_.frame.size.height)];
    [self.view addSubview:bannerViewTop_];
    
    // Initiate a generic request to load it with an ad.
    [bannerViewTop_ loadRequest:[GADRequest request]];
    
    
    [gameOverView.layer setCornerRadius:10.0];

    highScoreLabel.text = [NSString stringWithFormat:@"High Score: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"highScore"]];
    currentScore.text = [NSString stringWithFormat:@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"currentScore"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissCurrentController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}
- (IBAction)ExitFromApplication:(id)sender {
    exit(0);
    
}
@end
