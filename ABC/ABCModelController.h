//
//  ABCModelController.h
//  ABC
//
//  Created by Charles Konkol on 3/9/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ABCDataViewController;

@interface ABCModelController : NSObject <UIPageViewControllerDataSource>

- (ABCDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(ABCDataViewController *)viewController;

@end
