//
//  ViewController.m
//  FlappyBirdClone
//
//  Created by Matthias Gall on 10/02/14.
//  Copyright (c) 2014 Matthias Gall. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"
#import <AdSupport/AdSupport.h>
#import "GameOverViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(goToGameOverViewController:)
     name:@"GoToGameOverViewController"
     object:nil];
    
    [super viewDidLoad];
    interstitial_.delegate = self;

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = NO;
    skView.showsNodeCount = NO;
    
    // Create and configure the scene.
    SKScene * scene = [MyScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
    
    isFirstLoad = YES;
}

-(void)viewDidAppear:(BOOL)animated{
    if(!isFirstLoad){
        [[NSNotificationCenter defaultCenter]
         postNotificationName:@"cameFromController" object:self];
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

-(void)goToGameOverViewController:(NSNotification *) notification {
    isFirstLoad = NO;
    self.modalPresentationStyle = UIModalPresentationCurrentContext;
    NSString *identifier = @"gameOver";
    GameOverViewController  *yourController = [self.storyboard instantiateViewControllerWithIdentifier:identifier];
    [self presentViewController:yourController animated:YES completion:nil];

}
@end
