//
//  FLKUser.h
//  Flake
//
//  Created by Adrian Swanberg on 7/27/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "FLKManagedObject.h"

@class FLKUser;

@interface FLKUser : FLKManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * phoneNumber;
@property (nonatomic, retain) NSNumber * canHangOut;
@property (nonatomic, retain) NSSet *friends;

@end

@interface FLKUser (CoreDataGeneratedAccessors)

- (void)addFriendsObject:(FLKUser *)value;
- (void)removeFriendsObject:(FLKUser *)value;
- (void)addFriends:(NSSet *)values;
- (void)removeFriends:(NSSet *)values;

@end
