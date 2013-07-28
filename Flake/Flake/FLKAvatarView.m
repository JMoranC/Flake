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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
