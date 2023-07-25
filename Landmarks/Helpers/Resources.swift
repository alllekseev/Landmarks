//
//  Resources.swift
//  Landmarks
//
//  Created by Олег Алексеев on 25.07.2023.
//

import Foundation

enum Resources {
    enum Strings: String {
        case featured = "Featured"
        case list = "List"
    }
    
    enum SystemImage: String {
        case star = "star"
        case fillStar = "star.fill"
        case bulletList = "list.bullet"
    }
}

typealias R = Resources
