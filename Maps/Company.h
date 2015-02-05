//
//  Company.h
//  Maps
//
//  Created by Diego Mazzone on 5/2/15.
//  Copyright (c) 2015 MundoMac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Company : NSObject <MKAnnotation>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *address;

@property (nonatomic) double latitude;
@property (nonatomic) double longitude;

@end
