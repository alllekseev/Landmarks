//
//  ContentView.swift
//  Landmarks
//
//  Created by Олег Алексеев on 21.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label(
                        R.Strings.featured.rawValue,
                        systemImage: R.SystemImage.star.rawValue)
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label(
                        R.Strings.featured.rawValue,
                        systemImage: R.SystemImage.bulletList.rawValue)
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
