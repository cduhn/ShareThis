//
//  ShareNotifier.h
//  ShareThisProject
//
//  Created by Curtis Duhn on 7/5/13.
//  Copyright (c) 2013 Curtis Duhn. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const ShareNotifierDidShare;
extern NSString *const kShareNotifierServiceNameKey;

@interface ShareNotifier : NSObject

+ (id)notifier;
- (void)notifyOfShareByServiceNamed:(NSString *)serviceName;

@end
