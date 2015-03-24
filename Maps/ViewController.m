//
//  ViewController.m
//  Maps
//
//  Created by Diego Mazzone on 5/2/15.
//  Copyright (c) 2015 MundoMac. All rights reserved.
//

#import "ViewController.h"
#import "Company.h"

@interface ViewController () <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    
    // Check for iOS 8
    if ([self.locationManager respondsToSelector:@selector(requestAlwaysAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    
    self.mapView.showsUserLocation = YES;
    
    [self addCompanies];
}

- (void)addCompanies
{
    // Load some comapanies
    Company *comp1 = [Company new];
    comp1.name = @"Company 1";
    comp1.address = @"Some Address 1";
    comp1.latitude = -34.5;
    comp1.longitude = -56.5;
    
    Company *comp2 = [Company new];
    comp2.name = @"Company 2";
    comp2.address = @"Some Address 2";
    comp2.latitude = -34.55;
    comp2.longitude = -56.15;
    
    Company *comp3 = [Company new];
    comp3.name = @"Company 3";
    comp3.address = @"Some Address 3";
    comp3.latitude = -34.0;
    comp3.longitude = -56.0;
    
    self.companies = @[comp1, comp2, comp3];
    
    // Show companies on Map
    [self.mapView addAnnotations:self.companies];
}

@end
