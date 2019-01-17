//
//  IKTReachability.h
//  Reachability
//
//  Created by IKT on 16/6/30.
//  Copyright © 2016年 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import <netinet/in.h>

typedef enum : NSInteger {
    IKTNotReachable = 0,
    IKTReachableViaWiFi,
    IKTReachableViaWWAN
} IKTNetworkStatus;


extern NSString *IKTReachabilityChangedNotification;

@interface IKTReachability : NSObject


/*!
 * Use to check the reachability of a given host name.
 */
+ (instancetype)reachabilityWithHostName:(NSString *)hostName;

/*!
 * Use to check the reachability of a given IP address.
 */
+ (instancetype)reachabilityWithAddress:(const struct sockaddr_in *)hostAddress;

/*!
 * Checks whether the default route is available. Should be used by applications that do not connect to a particular host.
 */
+ (instancetype)reachabilityForInternetConnection;

/*!
 * Checks whether a local WiFi connection is available.
 */
+ (instancetype)reachabilityForLocalWiFi;

/*!
 * Start listening for reachability notifications on the current run loop.
 */
- (BOOL)startNotifier;
- (void)stopNotifier;

- (IKTNetworkStatus)currentReachabilityStatus;
- (NSString *)currentReachabilityStatusString;

/*!
 * WWAN may be available, but not active until a connection has been established. WiFi may require a connection for VPN on Demand.
 */
- (BOOL)connectionRequired;

@end
