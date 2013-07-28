//
//  FLKManagedObject.m
//  Flake
//
//  Created by Adrian Swanberg on 7/27/13.
//  Copyright (c) 2013 Adrian Swanberg. All rights reserved.
//

#import "FLKManagedObject.h"

@implementation FLKManagedObject

+(NSString *)entityName
{
    return nil;
}

+(FLKManagedObject *)newInManagedObjectContext:(NSManagedObjectContext *)managedObjectContext
{
    FLKManagedObject *obj;
    if ([self entityName])
    {
        NSEntityDescription *desc = [NSEntityDescription entityForName:[self entityName] inManagedObjectContext:managedObjectContext];
        
        obj = [[self alloc] initWithEntity:desc insertIntoManagedObjectContext:managedObjectContext];
    }
    
    return obj;
}

@end
