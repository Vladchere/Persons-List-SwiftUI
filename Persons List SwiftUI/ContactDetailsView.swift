//
//  ContactDetailsView.swift
//  Persons List SwiftUI
//
//  Created by Vladislav on 05.08.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("Email: \(person.email)")
                Text("Phone: \(person.phoneNumber)")
                Spacer()
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(person.fullName), displayMode: .inline)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getContactList().first!)
    }
}
