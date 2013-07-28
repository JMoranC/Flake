//
//  FLKAvatarView.h
//  Flake
//
//  Created by Adrian Swanberg on 7/28/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface FLKAvatarView : UIView
{

}

@property IBOutlet UIImageView *profilePicView;

@property IBOutlet UIImageView *ringView;

+(FLKAvatarView *)new;

-(void)setProfilePic:(UIImage *)profilePic;

@end
