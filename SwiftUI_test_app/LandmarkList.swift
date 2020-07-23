//
//  LandmarkList.swift
//  SwiftUI_test_app
//
//  Created by Madji on 22.07.20.
//  Copyright © 2020 Madji. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
//    @State var showFavoritesOnly = true
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly){
                    Text("Favorite only")
                }
            
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination:
                        ContentView(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .padding(.top)
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
   }
}
