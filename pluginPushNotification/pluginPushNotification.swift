//
//  pluginPushNotification.swift
//  pluginPushNotification
//
//  Created by dev on 11/29/18.
//  Copyright © 2018 pluginPushNotification. All rights reserved.
//

import Foundation
import AWSCore
import AWSPinpoint
import AWSMobileClient
import UserNotifications
@objc public class notificationPlugin: NSObject ,UNUserNotificationCenterDelegate{
    var pinpoint: AWSPinpoint?
    @objc public func registerForPushNotifications(didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            if let error = error {
                print("Error initializing AWSMobileClient: \(error.localizedDescription)")
            } else if let userState = userState {
                print("AWSMobileClient initialized. Current UserState: \(userState.rawValue)")
            }
        }

        // Initialize Pinpoint
        let pinpointConfiguration = AWSPinpointConfiguration.defaultPinpointConfiguration(launchOptions: launchOptions)
        pinpoint = AWSPinpoint(configuration: pinpointConfiguration)

        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) {
            (granted, error) in
            print("Permission granted: \(granted)")
            // 1. Check if permission granted
            guard granted else { return }
            // 2. Attempt registration for remote notifications on the main thread
            DispatchQueue.main.async {
                UIApplication.shared.registerForRemoteNotifications()
            }
        }
    }
  
}

