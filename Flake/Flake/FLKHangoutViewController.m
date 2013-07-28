//
//  FLKHangoutViewController.m
//  Flake
//
//  Created by Adrian Swanberg on 7/28/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import "FLKHangoutViewController.h"
#import "FLKAvatarView.h"

@interface FLKHangoutViewController ()

@end

typedef enum
{
    turqoise,
    greenSea,
    sunFlower,
    orange,
    emerald,
    nephritis,
    carrot,
    pumpkin,
    peterRiver,
    belizeHole,
    alizarin,
    pomengranate,
    amethyst,
    wisteria,
    clouds,
    silver,
    wetAsphalt,
    midnightBlue,
    concrete,
    asbestos
} FlatColor;

static UIColor *rgb(float r, float g, float b)
{
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0];
}

static UIColor *flatColor(FlatColor color)
{
    switch (color)
    {
        case turqoise:
            return rgb(26, 188, 156);
            break;
        case greenSea:
            return rgb(22, 160, 133);
            break;
        case sunFlower:
            return rgb(241, 196, 15);
            break;
        case orange:
            return rgb(243, 156, 18);
            break;
        case emerald:
            return rgb(46, 204, 113);
            break;
        case nephritis:
            return rgb(39, 174, 96);
            break;
        case carrot:
            return rgb(230, 126, 34);
            break;
        case pumpkin:
            return rgb(211, 84, 0);
            break;
        case peterRiver:
            return rgb(52, 152, 219);
            break;
        case belizeHole:
            return rgb(41, 128, 185);
            break;
        case alizarin:
            return rgb(231, 76, 60);
            break;
        case pomengranate:
            return rgb(192, 57, 43);
            break;
        case amethyst:
            return rgb(155, 89, 182);
            break;
        case wisteria:
            return rgb(142, 68, 173);
            break;
        case clouds:
            return rgb(236, 240, 241);
            break;
        case silver:
            return rgb(189, 195, 199);
            break;
        case wetAsphalt:
            return rgb(52, 73, 94);
            break;
        case midnightBlue:
            return rgb(44, 62, 80);
            break;
        case concrete:
            return rgb(149, 165, 166);
            break;
        case asbestos:
            return rgb(127, 140, 141);
            break;
        default:
            break;
    }
    
    return nil;
}

static UIImage *changeColorOfImage(UIImage *image, UIColor *newColor)
{
	CGColorRef color = [newColor CGColor];
    
	CGRect contextRect = (CGRect){CGPointZero, [image size]};
    UIGraphicsBeginImageContextWithOptions(contextRect.size, NO, image.scale);
 	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextBeginTransparencyLayer(context, NULL);
	CGContextScaleCTM(context, 1.f, -1.f);
	CGContextClipToMask(context, CGRectMake(contextRect.origin.x, -contextRect.origin.y, contextRect.size.width, -contextRect.size.height), [image CGImage]);
	
	CGColorSpaceRef colorSpace = CGColorGetColorSpace(color);
	CGColorSpaceModel model = CGColorSpaceGetModel(colorSpace);
	const CGFloat *colors = CGColorGetComponents(color);
	if (model == kCGColorSpaceModelMonochrome)
		CGContextSetRGBFillColor(context, colors[0], colors[0], colors[0], colors[1]);
	else
		CGContextSetRGBFillColor(context, colors[0], colors[1], colors[2], colors[3]);
	
	contextRect.size.height = -contextRect.size.height;
	CGContextFillRect(context, contextRect);
	
	CGContextEndTransparencyLayer(context);
	UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return img;
}

@implementation FLKHangoutViewController

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
    backgroundMapView.showsUserLocation = YES;
    backgroundMapView.delegate = self;
    
    FLKAvatarView *avatar = [FLKAvatarView new];
    avatar.frame = CGRectMake(220, 90, 77, 77);
    [avatar setProfilePic:[UIImage imageNamed:@"user_adrian"]];
    avatar.ringView.image = changeColorOfImage(avatar.ringView.image, flatColor(turqoise));
    [self.view addSubview:avatar];
    

    // Do any additional setup after loading the view from its nib.
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region;
    region.center = userLocation.coordinate;
    region.span.latitudeDelta = 0.05;
    region.span.longitudeDelta = 0.05;
    
    [backgroundMapView setRegion:region animated:YES];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{

}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"\n\n FAILED WITH ERROR: %@\n\n", [error localizedDescription]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
