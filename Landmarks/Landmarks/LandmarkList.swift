//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jeffry Sandoval on 7/23/19.
//  Copyright © 2019 Jeffry Sandoval. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(
                            destination: LandmarkDetail(landmark: landmark)
                                .environmentObject(self.userData)
                        ) {
                            LandmarkRow(landmark: landmark)
                            //LandmarkRow(landmark: landmarkData[0])
                            //LandmarkRow(landmark: landmarkData[1])
                        }
                        
                    }
                }
                
            }
            .navigationBarTitle(Text("Landmarks"), displayMode: .large)
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
//            .previewDevice(PreviewDevice(rawValue: "iPhone XS"))
    }
}
#endif
