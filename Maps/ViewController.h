//
//  ViewController.h
//  Maps
//
//  Created by Diego Mazzone on 5/2/15.
//  Copyright (c) 2015 MundoMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) NSArray *companies; // of Company

@end

