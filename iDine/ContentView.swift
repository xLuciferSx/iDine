//
//  ContentView.swift
//  iDine
//
//  Created by Raivis Olehno on 09/07/2020.
//  Copyright © 2020 Raivis Olehno. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationBarTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
