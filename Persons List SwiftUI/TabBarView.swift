//
//  TabBarView.swift
//  Persons List SwiftUI
//
//  Created by Vladislav on 04.08.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactListView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.circle")
                            .font(.title)
                        Text("Contacts")
                }
                
                SectionView(persons: persons)
                    .tabItem {
                        Image(systemName: "rectangle.stack.person.crop")
                            .font(.title)
                        Text("Contacts Detail")
                }
            }
            .navigationBarTitle(Text("Persons List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
