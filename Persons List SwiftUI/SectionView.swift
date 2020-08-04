//
//  SectionView.swift
//  Persons List SwiftUI
//
//  Created by Vladislav on 04.08.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    
    var persons: [Person]
    
    var body: some View {
        VStack {
            List {
                ForEach (persons) { person in
                    Section(header: Text(person.fullName)) {
                        HStack {
                            Image(systemName: Contacts.phone.rawValue)
                            Text(person.phoneNumber)
                        }
                        
                        HStack {
                            Image(systemName: Contacts.email.rawValue)
                            Text(person.email)
                        }
                    }
                }
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(persons: Person.getContactList())
    }
}
