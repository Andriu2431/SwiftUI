//
//  Cell.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import SwiftUI

//наш контейнер
struct Cell: View {
    
    //Отримаємо данні
    var user: UserResponse
    
    var body: some View {
        VStack(spacing: 16.0) {
            TopView(user: user)
            Text(user.text)
            //Зробимо обмеження по строкам - без обмежень
                .lineLimit(nil)
        }.padding() //Відступимо від країв
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        //без різниці що напишемо це лише для правої візуалізації
        Cell(user: userResponse[0])
    }
}
