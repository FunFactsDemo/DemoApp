//
//  ViewController.m
//  FunFacts
//
//  Created by Pasan Premaratne on 12/31/14.
//  Copyright (c) 2014 Treehouse. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h"
#import "ColorWheel.h"
#import "Mixpanel/MPTweakInline.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factBook = [[FactBook alloc] init];
    self.colorWheel = [[ColorWheel alloc] init];
    
    UIColor *randomColor = [self.colorWheel randomColor];
    self.view.backgroundColor = randomColor;
    self.funFactButton.tintColor = randomColor;
    
    // self.funFactLabel.text = [self.factBook randomFact];
    MPTweakBind(_funFactLabel, text, @"label text", @"Stanford is a Premier Institution");
    
    /*
    NSNumber *factTweaks = 0;
    BOOL *manualOverride = NO;
    Let's autoshow facts and we'll wrap this in a Tweakbind to alter this number
    if (!manualOverride) {
       // Commence with the auto-revolving tweaks
        
        
        
    }
    */
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showFunFact {
    UIColor *randomColor = [self.colorWheel randomColor];
    self.view.backgroundColor = randomColor;
    self.funFactButton.tintColor = randomColor;
    // self.funFactLabel.text = [self.factBook randomFact];
}


@end
