//
//  ShareNotifier.m
//  ShareThisProject
//
//  Created by Curtis Duhn on 7/5/13.
//  Copyright (c) 2013 Curtis Duhn. All rights reserved.
//

#import "ShareNotifier.h"

NSString *const ShareNotifierDidShare = @"ShareNotifierDidShare";
NSString *const kShareNotifierServiceNameKey = @"ServiceName";

@implementation ShareNotifier

+ (id)notifier
{
    static ShareNotifier *notifier = nil;
    if (notifier == nil) {
        notifier = [[ShareNotifier alloc] init];
    }
    return notifier;
}

- (void)notifyOfShareByServiceNamed:(NSString *)serviceName
{
    [[NSNotificationCenter defaultCenter] postNotificationName:ShareNotifierDidShare
                                                        object:self
                                                      userInfo:@{kShareNotifierServiceNameKey : serviceName}];
}


@end
