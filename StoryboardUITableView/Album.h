//
//  Album.h
//  StoryboardUITableView
//
//  Created by Kurry Tran on 10/25/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject
@property (nonatomic, copy) NSString *albumName;
@property (nonatomic, copy) NSString *artist;
@property (nonatomic, assign) int rating;

@end
