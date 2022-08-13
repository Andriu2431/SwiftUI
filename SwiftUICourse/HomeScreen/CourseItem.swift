//
//  ProductItem.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import SwiftUI

struct CourseItem: View {
    
    //Тут буде один курс або веб
    var object: ProductsResponse
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .cornerRadius(10)
                .frame(width: 170, height: 170)
        }.padding(.leading, 15)
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem(object: materialResponse[0])
    }
}
