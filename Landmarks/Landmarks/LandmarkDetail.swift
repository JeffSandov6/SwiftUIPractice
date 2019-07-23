//
//  ContentView.swift
//  Landmarks
//
//  Created by Jeffry Sandoval on 7/22/19.
//  Copyright © 2019 Jeffry Sandoval. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
          
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .bold()
                    .italic()
                    .font(.title)
              
                    HStack {
                        Text("Joshua Tree Natioanl Park")
                            .font(.subheadline)
                            Spacer()
                            Text("California")
                                .font(.subheadline)
                    }
            }
              
            .padding()
            
            Spacer()
        }
      
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
#endif