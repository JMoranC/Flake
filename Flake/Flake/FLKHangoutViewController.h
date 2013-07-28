//
//  FLKHangoutViewController.h
//  Flake
//
//  Created by Adrian Swanberg on 7/28/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import "FLKViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FLKHangoutViewController : FLKViewController <CLLocationManagerDelegate, MKMapViewDelegate>
{
    CLLocationManager *locationManager;
    IBOutlet MKMapView *backgroundMapView;
}

@end
