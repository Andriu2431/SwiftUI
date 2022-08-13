//
//  WebinarRow.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import SwiftUI

struct WebinarRow: View {
    //Катигорії
    var categoryName: String
    //Айтими
    var items: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            //Добавимо скрол щоб можна було прокручувати курси
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 0) {
                    //Будемо виводити обєкти катигорії - item
                    ForEach(self.items) { object in
                        //Зробимо так щоб при тапі на курс викликався якийсь екран
                        NavigationLink(destination: DetailScreen(object: object)) {
                            WebinarItem(object: object)
                        }
                    }
                }.frame(height: 210)
            }
        }
    }
}

struct WebinarRow_Previews: PreviewProvider {
    static var previews: some View {
        WebinarRow(categoryName: "Webinars", items: Array(materialResponse.dropFirst(4)))
    }
}
