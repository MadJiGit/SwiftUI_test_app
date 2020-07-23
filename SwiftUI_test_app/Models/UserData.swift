//
//  UserData.swift
//  SwiftUI_test_app
//
//  Created by Madji on 23.07.20.
//  Copyright © 2020 Madji. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
