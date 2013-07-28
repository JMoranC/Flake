//
//  FLKManagedObject.h
//  Flake
//
//  Created by Adrian Swanberg on 7/27/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface FLKManagedObject : NSManagedObject

+(FLKManagedObject *)newInManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;

@end
