//
//  Circle Image.swift
//  SwiftUI_test_app
//
//  Created by Madji on 22.07.20.
//  Copyright © 2020 Madji. All rights reserved.
//

import SwiftUI

struct Circle_Image: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct Circle_Image_Previews: PreviewProvider {
    static var previews: some View {
        Circle_Image()
    }
}
