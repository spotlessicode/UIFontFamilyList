//
//  ViewController.m
//  UIFontFamilyList
//
//  Created by Eva Puskas on 2016. 04. 03..
//  Copyright © 2016. Pepzen Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Create FontFamilies Array
    NSArray *fontFamilies = [UIFont familyNames];
    
    //check all fontfamilies
    for (int i = 0; i < [fontFamilies count]; i++)
    {
        //Create FontFamily Name NSString for all
        NSString *fontFamily = [fontFamilies objectAtIndex:i];
        //Check the Font names of the Font Family
        NSArray *fontNames = [UIFont fontNamesForFamilyName:[fontFamilies objectAtIndex:i]];
        
        // Write out the Font Famaily name and the Font's names of the Font Family
        NSLog (@"%@: %@", fontFamily, fontNames);
    }
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
