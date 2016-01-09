/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The `HomeStore` class is a simple singleton class which holds a home manager and the current selected home.
*/

import HomeKit

/// A static, singleton class which holds a home manager and the current home.
class HomeStore: NSObject, HMHomeManagerDelegate {
    static let sharedStore = HomeStore()
    
    // MARK: Properties
    
    /// The current 'selected' home.
    var home: HMHome?
    
    /// The singleton home manager.
    var homeManager = HMHomeManager()
    
    /// Fibaro credentials
    var fibaroHost: String?
    var fibaroUserName: String?
    var fibaroPassword: String?
    var fibaroGrouping: String?
    
}
