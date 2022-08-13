//
//  UserResponse.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import Foundation
import SwiftUI
import UIKit

//Це наша структура данних - тут будемо конвертувати дані які отримуємо з userModelData
struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}
