//
//  WebinarItem.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import SwiftUI

struct WebinarItem: View {
    //Тут буде один курс або веб
    var object: ProductsResponse
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(10)
                .frame(width: 170, height: 190)
        }.padding(.leading, 15)
    }
}

struct WebinarItem_Previews: PreviewProvider {
    static var previews: some View {
        WebinarItem(object: materialResponse[4])
    }
}
