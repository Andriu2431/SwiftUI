//
//  ProductsResponse.swift
//  SwiftUICourse
//
//  Created by Andriy on 13.08.2022.
//

import Foundation
import SwiftUI
import UIKit

enum Category: String, CaseIterable, Codable, Hashable {
    case courses = "Courses"
    case webinars = "Webinars"
}

//Тут будемо парсити данні курсів та вебвінарів
struct ProductsResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var shortName: String
    var category: Category
    var description: String
    var rating: Double
    var students: Int
    var lessons: Int
    var isFavorite: Bool
    var isFeatured: Bool
}
