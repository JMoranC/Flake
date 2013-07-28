//
//  FLKAvatarView.h
//  Flake
//
//  Created by Adrian Swanberg on 7/28/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FLKAvatarView : UIView
{
    IBOutlet UIImageView *profilePicView;
    IBOutlet UIImageView *ringView;
}

+(FLKAvatarView *)new;

@end
