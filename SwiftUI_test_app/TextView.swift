//
//  TextView.swift
//  SwiftUI_test_app
//
//  Created by Madji on 22.07.20.
//  Copyright © 2020 Madji. All rights reserved.
//

import SwiftUI

struct TextView: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(landmark.name)
                .font(.title)
                .foregroundColor(.green)
            HStack(alignment: .top) {
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
            }
        }
//        .padding()
    }
}

//struct TextView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextView(landmark: <#Landmark#>)
//    }
//}
