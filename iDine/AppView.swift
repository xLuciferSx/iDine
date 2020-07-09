//
//  AppView.swift
//  iDine
//
//  Created by Raivis Olehno on 09/07/2020.
//  Copyright © 2020 Raivis Olehno. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }
                
            OrderView()
                .tabItem {
                Image(systemName: "square.and.pencil")
                    Text("Order")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        AppView().environmentObject(order)
    }
}
