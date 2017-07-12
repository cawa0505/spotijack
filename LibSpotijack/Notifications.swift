//
//  Notifications.swift
//  LibSpotijack
//
//  Created by Alex Jackson on 12/07/2017.
//  Copyright © 2017 Alex Jackson. All rights reserved.
//

import Foundation
import TypedNotification

public extension Namespaced {
    static var namespace: String { return "org.alexj.LibSpotijack" }
}

public extension SpotijackSessionManager {
    /// Posted when the mute state of Spotify changes.
    public struct MuteStateDidChange: TypedNotification {
        public let sender: SpotijackSessionManager
        public let newMuteState: Bool
    }

    /// Posted when an error occurs outside of a throwing a function.
    /// For example, accessing the muted state of Spotify when a
    /// scripting interface can't be obtained.
    public struct DidEncounterError: TypedNotification {
        public let sender: SpotijackSessionManager
        public let error: Error
    }
}
