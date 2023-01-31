//
//  entr.swift
//  temp
//
//  Created by Nick Pavlov on 1/24/23.
//

import SwiftUI

struct entr: View {
    var body: some View {
        NavigationStack {
            TabView {
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [.blue, .pink]), startPoint: .leading, endPoint: .trailing).ignoresSafeArea()
                    
                    
                        .tabItem {
                            Image(systemName: "globe")
                            Text("Hey")
                    }
                }
            }
        }
    }
}

struct entr_Previews: PreviewProvider {
    static var previews: some View {
        entr()
    }
}
