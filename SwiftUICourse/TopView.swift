//
//  TopView.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import SwiftUI

//Тут реалізуємо верхню частину, фото емаіл та лайки
struct TopView: View {
    
    //Отримаємо данні
    var user: UserResponse
    
    var body: some View {
        
        //Як stack View, є горизонтальний, є вертикальний
        HStack(spacing: 8.0) {
            Image(user.profileImage)
            //Для того щоб фото встало як розмір image
                .resizable()
            //Задамо розмір image
                .frame(width: 70, height: 70)
            //Зробимо фото круглою
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.name)
                //Міняємо шрифт до тексту
                    .font(.title)
                
                HStack {
                    Text(user.email)
                        .font(.subheadline)
                        .lineLimit(1)
                    //Зробимо так щоб всі елементи прижались до країв дисплея - між яким кодом ми його ставим так це все і розділиться
                    Spacer()
                    Image("like")
                    Text(user.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(user: userResponse[2])
    }
}
