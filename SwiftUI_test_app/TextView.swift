//
//  TextView.swift
//  SwiftUI_test_app
//
//  Created by Madji on 22.07.20.
//  Copyright © 2020 Madji. All rights reserved.
//

import SwiftUI

struct TextView: View {
    
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: {
            $0.id == landmark.id
        })!
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(landmark.name)
                    .font(.title)
                
                Button(action: {
                    self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                }) {
                    if self.userData.landmarks[self.landmarkIndex].isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundColor(Color.gray)
                    }
                }
            }
            
            HStack(alignment: .top) {
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

//struct TextView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextView(landmark: LandmarkList)
//    }
//}
