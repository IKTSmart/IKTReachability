//
//  ViewController.m
//  IKTReachabilityDemo
//
//  Created by bcikt on 2019/1/17.
//  Copyright © 2019 IKTDemo. All rights reserved.
//

#import "ViewController.h"
#import "IKTReachability.h"

@interface ViewController ()

@property (nonatomic, strong) IKTReachability *internetReachability;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    _internetReachability = [IKTReachability reachabilityForInternetConnection];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reachabilityChanged:) name:IKTReachabilityChangedNotification object:nil];
    [_internetReachability startNotifier];
}

- (void)reachabilityChanged:(NSNotification *)note{
    IKTReachability* curReach = [note object];
    NSParameterAssert([curReach isKindOfClass:[IKTReachability class]]);
    
    NSLog(@"state:%@",[curReach currentReachabilityStatusString]);
    /*
     * Do something
     */
}


@end
