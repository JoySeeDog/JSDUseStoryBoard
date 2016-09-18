//
//  JQStoryboardSegue.m
//  UseStoryBoard
//
//  Created by jianquan on 16/8/17.
//  Copyright © 2016年 JoySeeDog. All rights reserved.
//

#import "JQStoryboardSegue.h"

@implementation JQStoryboardSegue

- (instancetype)initWithIdentifier:(nullable NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination {
    
    UIStoryboard *externStroyBoard = [UIStoryboard  storyboardWithName:identifier bundle:[NSBundle bundleForClass:self.class]];
    
    id initViewController = [externStroyBoard instantiateInitialViewController];
    
    return [super initWithIdentifier:identifier source:source destination:initViewController];

}

- (void)perform
{
    [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:NULL];
}
@end
