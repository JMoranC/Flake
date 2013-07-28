//
//  FLKAvatarView.m
//  Flake
//
//  Created by Adrian Swanberg on 7/28/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import "FLKAvatarView.h"


@implementation FLKAvatarView

+(FLKAvatarView *)new
{
    NSArray *items = [[NSBundle mainBundle] loadNibNamed:@"FLKAvatarView" owner:self options:nil];
    FLKAvatarView *view = items[0];
    
    return view;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setProfilePic:(UIImage *)profilePic
{
    self.profilePicView.image = profilePic;
    self.profilePicView.layer.masksToBounds = YES;
    self.profilePicView.layer.cornerRadius = self.profilePicView.bounds.size.width/2;
    
}

@end
