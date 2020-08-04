//
//  ContactListView.swift
//  Persons List SwiftUI
//
//  Created by Vladislav on 04.08.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct ContactListView: View {
    
    var persons: [Person]
    
    var body: some View {
        VStack {
            List(persons) { person in
                NavigationLink(destination: ContactDetailsView(person: person)) {
                    Text(person.fullName)
                }
            }
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
