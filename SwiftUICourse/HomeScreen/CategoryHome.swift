//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import SwiftUI

//Головний екран
struct CategoryHome: View {
    
    //Катигорія - курси чи вебвінари - через ініт будем отримувати зразу що це
    var categories: [String: [ProductsResponse]] {
        .init(grouping: materialResponse, by: { $0.category.rawValue })
    }
    
    var body: some View {
        NavigationView {
            List() {
                //Додаємо контейнер на верх
                Cell(user: swiftbook).listRowInsets(EdgeInsets())
                //Отримуємо данні по ключу - проходимось по ключах сортуємо їх та дивимось які є види
                ForEach(self.categories.keys.sorted(), id: \.self) { key in
                    //Перевірим для того щоб розимір фото знати
                    if key == "Courses" {
                        //Передаємо в обєкт імя катигорії та айтими витягуємо по імені катигорії
                        CourseRow(categoryName: key, items: self.categories[key]!)
                    } else if key == "Webinars" {
                        WebinarRow(categoryName: key, items: self.categories[key]!)
                    }
                
                }.listRowInsets(EdgeInsets()) //прижмемо до країв
                //Додаємо кнопку переходу до викладачів
                NavigationLink(destination: FriendsList()) {
                    Text("Наші викладачі")
                }
            }
            .navigationBarTitle(Text("Homepage"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
