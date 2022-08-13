//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Добавимо navBar
        NavigationView {
            //Це як tableView - присвоюємо йому данні типу UserResponse
            List(userResponse) { user in
                //Передаємо user
                Cell(user: user)
            }
            //Заголовок для navBar
            .navigationTitle(Text("Friends"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
