//
//  DetailScreen.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import SwiftUI

struct DetailScreen: View {
    
    //Дістанем інформацію про курс
    var object: ProductsResponse
    
    var body: some View {
        VStack(spacing: 16.0) {
            VStack(spacing: 20) {
                MainImage(object: object)
                Text(object.name)
                    .lineLimit(nil)
                    .font(.title)
            }
            LittleStack(object: object)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Опис:")
                    .font(.title)
                Text(object.description)
                    .lineLimit(nil)
            }
            //Піднімемо всі елементи трохи вгору
            Spacer()
        }.padding()
    }
}

struct MainImage: View {
    
    //Дістанем інформацію про курс
    var object: ProductsResponse
    
    var body: some View {
        Image(object.image)
            .resizable()
            .cornerRadius(30)
            .frame(width: 170, height: 170)
        //Обводка
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 3))
        //Тіні
            .shadow(radius: 10)
    }
}

struct LittleStack: View {
    var object: ProductsResponse
    
    var body: some View {
        HStack(spacing: 30.0) {
            VStack {
                Text("\(object.lessons)")
                    .font(.title)
                Text("Lessons")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack {
                Text("\(object.students)")
                    .font(.title)
                Text("Students")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: materialResponse[2])
    }
}
