//
//  UserData.swift
//  Landmarks
//
//  Created by Jeffry Sandoval on 7/23/19.
//  Copyright © 2019 Jeffry Sandoval. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<Void, Never>()
    
    var showFavoritesOnly = false {
        willSet {
            didChange.send()
        }
    }
    var landmarks = landmarkData {
        willSet {
            didChange.send()
        }
    }
}
